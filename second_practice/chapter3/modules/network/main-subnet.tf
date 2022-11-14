resource "azurerm_subnet" "vmss-subnet" {
  name                 = "bc-uks-tst-tfupandrunning-sb01"
  resource_group_name  = azurerm_resource_group.deployment-environment-resource-group.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = [var.virtual_network_subnet_address_space]
}