data "azurerm_resource_group" "deployment-environment-resource-group" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "db_subnet" {
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  name                 = var.db_subnet_name
}