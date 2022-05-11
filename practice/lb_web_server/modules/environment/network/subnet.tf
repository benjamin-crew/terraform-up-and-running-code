resource "azurerm_subnet" "vmss_subnet" {
  name                 = var.vmss_subnet_name
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vmss_subnet_range
}