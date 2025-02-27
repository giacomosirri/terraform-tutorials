terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = ">= 1.11.0"
    }
  }
  required_version = ">= 0.13"
}

provider "scaleway" {
  access_key      = var.access_key
  secret_key      = var.secret_key
  organization_id = var.organization_id
  project_id      = var.project_id
}

resource "scaleway_iam_user" "test-user" {
  email = "test@gmail.com"
}
