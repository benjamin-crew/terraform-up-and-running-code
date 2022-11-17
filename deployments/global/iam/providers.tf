terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 2.30.0"
    }
  }

  required_version = "~> 1.0"
}