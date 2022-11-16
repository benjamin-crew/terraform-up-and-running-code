resource "azurerm_private_dns_zone" "mysql_private_dns_zone" {
  name                = "${var.mysql_server_name}.private.mysql.database.azure.com"
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "mysql_private_dns_zone_vnet_link" {
  name                  = "${var.mysql_server_name}.com"
  private_dns_zone_name = azurerm_private_dns_zone.mysql_private_dns_zone.name
  virtual_network_id    = data.azurerm_virtual_network.vnet.id
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
}