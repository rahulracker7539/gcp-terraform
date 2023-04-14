
resource "google_container_cluster" "private" {
  name                      = "my-private-gke-cluster"
  location                  = var.region
  initial_node_count        = 1
  project                   = var.project_id
  remove_default_node_pool  = true
  network                   = google_compute_network.gke-network.self_link
  subnetwork                = google_compute_subnetwork.gke-network-subnet.self_link
  networking_mode           = "VPC_NATIVE"
  default_max_pods_per_node = 60
  private_cluster_config {
    enable_private_nodes   = true
    master_ipv4_cidr_block = "173.16.0.0/28"
  }
  ip_allocation_policy {
    cluster_secondary_range_name  = var.gke_pod_range_name
    services_secondary_range_name = var.gke_service_range_name
  }
}

resource "google_container_node_pool" "primary-node" {
  name       = "my-node-pool1"
  location   = var.region
  cluster    = google_container_cluster.private.name
  node_count = 1
  node_config {
    service_account = google_service_account.gke-sva.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  depends_on = [
    google_service_account.gke-sva, google_compute_network.gke-network
  ]

}

resource "google_container_node_pool" "secondary-node" {
  name     = "my-node-pool2"
  location = var.region
  cluster  = google_container_cluster.private.name
  node_config {
    preemptible     = true
    service_account = google_service_account.gke-sva.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  autoscaling {
    max_node_count = 4
  }
  depends_on = [
    google_service_account.gke-sva, google_compute_network.gke-network
  ]
}
