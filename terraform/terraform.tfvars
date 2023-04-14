region     = "europe-west2"
project_id = "<project ID>"
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

dataset_id = "vmo2_tech_test"

bigquery_role_assignment = {
  vmo2_tech_test = {
    role = "roles/bigquery.dataEditor"
    user = "<user mail>"
  }
  /* dataset2 = {
    role = "roles/bigquery.viewer"
    user = "user2@example.com"
  } */
}
