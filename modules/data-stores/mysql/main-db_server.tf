resource "azurerm_mysql_flexible_server" "mysql-server" {
  name                   = var.mysql_server_name
  resource_group_name = data.azurerm_resource_group.deployment-environment-resource-group.name
  location            = data.azurerm_resource_group.deployment-environment-resource-group.location
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  backup_retention_days  = 1
  delegated_subnet_id    = data.azurerm_subnet.db_subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.mysql_private_dns_zone.id
  sku_name               = var.db_server_sku

  depends_on = [azurerm_private_dns_zone_virtual_network_link.mysql_private_dns_zone_vnet_link]
}