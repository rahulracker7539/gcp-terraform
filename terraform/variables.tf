variable "region" {
  description = "provide region name"
  type        = string
}
variable "project_id" {
  description = "provide project id"
  type        = string
}

variable "subnet_secondary_cidr" {
  description = "provide subnect secondary cidr"
  type        = list(any)
}

variable "gke_pod_range_name" {
  description = "provide pod range"
  type        = string
}
variable "gke_service_range_name" {
  description = "provide service range"
  type        = string
}

variable "subnet_ip_cidr_range" {
  description = "provide subnet ip cidr range"
  type        = string
}

variable "sva_account_id" {
  description = "provide service account id"
  type        = string
}

variable "dataset_id" {
  description = "provide bigquery dataset id"
  type        = string
}

variable "bigquery_role_assignment" {
  description = "provide bigquery role details"
  type = map(object({
    role = string
    user = string
  }))
}