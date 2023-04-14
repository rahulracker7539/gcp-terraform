resource "google_service_account" "gke-sva" {
  project      = var.project_id
  account_id   = var.sva_account_id
  display_name = "A service account that only GKE will use"
}

resource "google_project_iam_member" "svc_act_user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.gke-sva.email}"
  depends_on = [
    google_service_account.gke-sva
  ]
}

resource "google_project_iam_member" "node_sva_account" {
  project = var.project_id
  role    = "roles/container.nodeServiceAccount"
  member  = "serviceAccount:${google_service_account.gke-sva.email}"
  depends_on = [
    google_service_account.gke-sva
  ]
}