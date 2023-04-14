resource "google_bigquery_dataset" "vmo2_tech_test" {
  project     = var.project_id
  dataset_id  = var.dataset_id
  description = "Dataset for VMO2 Tech Test"
}

resource "google_bigquery_dataset_access" "bigquery_roles" {
  project  = var.project_id
  for_each = var.bigquery_role_assignment

  dataset_id = each.key
  role       = each.value["role"]

  user_by_email = each.value["user"]
  depends_on = [
    google_bigquery_dataset.vmo2_tech_test
  ]
}

