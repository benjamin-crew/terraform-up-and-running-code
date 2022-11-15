terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "network" {
  source = "../../../../modules/environment/network"

  # Resource Group
  rg_name = var.rg_name

  # Virtual Network
  vnet_name     = var.vnet_name
  address_space = var.address_space
  vnet_tags     = var.vnet_tags

  # Subnet
  vmss_subnet_name  = var.vmss_subnet_name
  vmss_subnet_range = var.vmss_subnet_range
}
