terraform {
  backend "gcs" {
    bucket = "infrateam-playground-tf-state"
    prefix = "infrateam-tf/prod44/state"
  }
}