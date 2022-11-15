terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "env" {
  source = "../../../../modules/environment/env"

  # Resource Group
  rg_name     = var.rg_name
  rg_location = var.rg_location
  rg_tags     = var.rg_tags

  # Storage
  storage_account_name = var.storage_account_name
  sa_tags              = var.sa_tags
}

