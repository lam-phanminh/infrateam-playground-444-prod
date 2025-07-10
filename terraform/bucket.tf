resource "google_storage_bucket" "my_bucket" {
  name     = "y-bucket-ducvo-20250710" # must be globally unique
  location = "US"
  project  = var.project_id

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }

  versioning {
    enabled = true
  }

  labels = {
    environment = "dev"
    team        = "platform"
  }
}
