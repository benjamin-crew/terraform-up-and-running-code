terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.2.9"
}

module "deployment-environment" {
  source = "../../../modules/deployment-environment"

  resource_group_name  = var.resource_group_name
  location = var.location
}