data "azurerm_resources" "subnets" {
  resource_group_name = "test-rg"
  type                = "Microsoft.Network/virtualNetworks/subnets"
}