module "bigquery" {
  project_id               = var.project_id
  source                   = ".//modules/bigquery"
  dataset_id               = var.dataset_id
  bigquery_role_assignment = var.bigquery_role_assignment
}