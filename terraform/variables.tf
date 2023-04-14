variable "region" {
  type = string
}
variable "project_id" {
  type = string
}

variable "subnet_secondary_cidr" {
  type = list(any)
}

variable "gke_pod_range_name" {
  type = string
}
variable "gke_service_range_name" {
  type = string
}

variable "subnet_ip_cidr_range" {
  type = string
}

variable "sva_account_id" {
  type = string
}