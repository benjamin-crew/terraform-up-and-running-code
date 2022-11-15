resource "azurerm_virtual_network" "virtual-network" {
  name                = var.virtual_network_name
  address_space       = [var.virtual_network_address_space]
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
}