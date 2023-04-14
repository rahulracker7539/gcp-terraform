region     = "europe-west2"
project_id = "coen-rahul-kumar"
#network    = "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/gke-network"
subnet_secondary_cidr = [
  {
    range_name    = "pod"
    ip_cidr_range = "172.25.32.0/22"
  },
  {
    range_name    = "service"
    ip_cidr_range = "172.25.36.0/27"
  }
]
gke_pod_range_name     = "pod"
gke_service_range_name = "service"
sva_account_id         = "gke-sva"
subnet_ip_cidr_range   = "172.25.36.32/28"
