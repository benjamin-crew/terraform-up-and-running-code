terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "data_sources" {
  source = "../modules/module"
}
output "vnet" {
  value = module.data_sources.vnet
}