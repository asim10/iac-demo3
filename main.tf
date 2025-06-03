terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.37.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "playground-s-11-b51a3126"
  region  = "us-east1"
}
