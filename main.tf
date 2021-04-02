terraform {
   required_version = "=0.13.6"
}

provider "google" {
  version = "~> 3.42.0"
}

provider "google-beta" {
  version = "~> 3.42.0"
}

module "gke-gitlab" {
  source            = "terraform-google-modules/gke-gitlab/google"
  project_id        = "${var.project_id}"
  certmanager_email = "test@example.com"
}