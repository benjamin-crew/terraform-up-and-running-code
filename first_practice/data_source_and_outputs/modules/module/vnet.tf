data "azurerm_virtual_network" "vnet" {
  resource_group_name = "test-rg"
  name                = "test-vnet"
}

output "vnet" {
  value = data.azurerm_virtual_network.vnet.subnets
}