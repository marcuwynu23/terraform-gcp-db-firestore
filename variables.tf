variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "region" {
  description = "The region in which to provision resources. To stay within GCP Free Tier, use: us-west1, us-central1, or us-east1."
  type        = string
  default     = "us-central1"

  validation {
    condition     = contains(["us-west1", "us-central1", "us-east1"], var.region)
    error_message = "Region must be one of the GCP Free Tier regions: us-west1, us-central1, or us-east1."
  }
}

variable "database_id" {
  description = "The ID of the Firestore database."
  type        = string
  default     = "default"
}

variable "database_type" {
  description = "The type of Firestore database: FIRESTORE_NATIVE or DATASTORE_MODE."
  type        = string
  default     = "FIRESTORE_NATIVE"

  validation {
    condition     = contains(["FIRESTORE_NATIVE", "DATASTORE_MODE"], var.database_type)
    error_message = "Database type must be either FIRESTORE_NATIVE or DATASTORE_MODE."
  }
}
