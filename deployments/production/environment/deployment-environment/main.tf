terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.31.0"
    }
  }

  required_version = "~> 1.0"
}

module "deployment-environment" {
  source = "../../../../modules/environment/deployment-environment"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}