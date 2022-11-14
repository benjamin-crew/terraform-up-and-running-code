resource "azurerm_lb" "vmss_lb" {
  name                = "bc-uks-tst-tfupandrunning-vmss-lb-01"
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}