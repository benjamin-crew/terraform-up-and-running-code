terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "http_server" {
  source = "../../../../modules/services/web-frontend"

  # Resource Group
  rg_name = var.rg_name

  # Virtual Network
  vnet_name     = var.vnet_name

  # Subnet
  vmss_subnet_name  = var.vmss_subnet_name

  # Public IP
  public_ip_name = var.public_ip_name

  # Network Security Group
  nsg_name    = var.nsg_name
  server_port = var.server_port

  # Virtual NIC
  nic_name = var.nic_name

  # Virtual Machine Scale Set
  vmss_name     = var.vmss_name
  vmss_sku      = var.vmss_sku
  vmss_username = var.vmss_username
  vmss_password = var.vmss_password

  # Virtual Machine Scale Set Load Balancer
  vmss_lb_name = var.vmss_lb_name
}
