terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.31.0"
    }
  }

  required_version = "~> 1.0"
}

module "vmss_frontend_web_server" {
  source = "../../../modules/vmss_frontend_web_server"

  resource_group_name = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  vmss_subnet_name         = var.vmss_subnet_name
  server_port         = var.server_port
  vmss_password = var.vmss_password
}