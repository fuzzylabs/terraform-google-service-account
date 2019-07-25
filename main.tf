resource "google_service_account" "default" {
  account_id   = var.name
  display_name = var.display_name
  project      = var.project
}

resource "google_project_iam_member" "default" {
  count   = length(var.roles)
  project = var.project
  member  = "serviceAccount:${google_service_account.default.email}"
  role    = element(var.roles, count.index)
}
