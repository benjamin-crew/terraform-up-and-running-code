resource "azurerm_subnet" "vmss_subnet" {
  name                 = var.vmss_subnet_name
  resource_group_name  = data.azurerm_resource_group.deployment-environment-resource-group.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = [var.vmss_subnet_address_space]
}

resource "azurerm_subnet" "db_subnet" {
  name                 = var.db_subnet_name
  resource_group_name  = data.azurerm_resource_group.deployment-environment-resource-group.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = [var.db_subnet_address_space]
}