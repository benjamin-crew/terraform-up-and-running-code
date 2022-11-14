terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.31.0"
    }
  }

  required_version = "~> 1.0"
}

module "network" {
  source = "../../../modules/network"

  resource_group_name           = var.resource_group_name
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  subnet_name                   = var.subnet_name
  subnet_address_space          = var.subnet_address_space
  server_port                   = var.server_port
  nsg_name                      = var.nsg_name

}