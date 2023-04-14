terraform {
  backend "local" {
  }
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.51.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}
provider "google" {
  project = var.project_id
}
provider "google-beta" {
  project = var.project_id
}
