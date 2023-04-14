variable "dataset_id" {
  description = "provide dataset id name"
  type = string
}

variable "project_id" {
  description = "provide project id name"
  type = string
}

variable "bigquery_role_assignment" {
  description = "provide dataset id, role and user"
  type = map(object({
    role = string
    user = string
  }))
}