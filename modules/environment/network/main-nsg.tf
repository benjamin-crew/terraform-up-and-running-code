resource "azurerm_network_security_group" "vmss_nsg" {
  name                = var.vmss_nsg_name
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
}

resource "azurerm_network_security_group" "db_nsg" {
  name                = var.db_nsg_name
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
}