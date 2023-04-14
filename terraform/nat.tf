resource "google_compute_router" "outbound-router" {
  name    = "outbound-router"
  project = var.project_id
  region  = var.region
  network = google_compute_network.gke-network.self_link

  bgp {
    asn = 64514
  }
}

resource "google_compute_router_nat" "outbound-gke-nat" {
  name                               = "outbound-gke-nat"
  project                            = var.project_id
  router                             = google_compute_router.outbound-router.name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
