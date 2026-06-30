provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_firestore_database" "database" {
  name        = var.database_id
  location_id = var.region
  type        = var.database_type

  delete_protection_state = "DELETE_PROTECTION_DISABLED"
  deletion_policy         = "DELETE"
}
