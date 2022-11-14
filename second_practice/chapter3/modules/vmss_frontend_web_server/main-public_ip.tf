resource "azurerm_public_ip" "public_ip" {
  name                = "bc-uks-tst-tfupandrunning-pip-01"
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
  allocation_method   = "Static"
  sku                 = "Standard"
}