data "azurerm_resource_group" "deployment-environment-resource-group" {
  name = var.resource_group_name
}

data "azurerm_subnet" "vmss_subnet" {
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  name                 = var.vmss_subnet_name
}