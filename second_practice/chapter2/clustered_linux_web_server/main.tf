terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
    tenant_id            = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id      = "7c953d5a-e175-405e-bf11-a8cb0ecc9f09"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "bc-uks-tst-tfupandrunning-rg01"
  location = "UK South"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "bc-uks-tst-tfupandrunning-vnet01"
  address_space       = ["172.18.100.0/24"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "bc-uks-tst-tfupandrunning-sb01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["172.18.100.0/24"]
}