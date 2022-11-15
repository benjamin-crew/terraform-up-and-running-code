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
  source = "../../../../modules/environment/network"

  resource_group_name           = var.resource_group_name
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  vmss_subnet_name              = var.vmss_subnet_name
  vmss_subnet_address_space     = var.vmss_subnet_address_space
  vmss_nsg_name                 = var.vmss_nsg_name
  db_subnet_name                = var.db_subnet_name
  db_subnet_address_space       = var.db_subnet_address_space
  db_nsg_name                   = var.db_nsg_name

  server_port = var.server_port

}