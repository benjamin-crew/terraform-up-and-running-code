resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_resource_group.deployment-environment-resource-group.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = [var.subnet_address_space]
}