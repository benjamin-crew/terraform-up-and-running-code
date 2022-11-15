output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.mysql-server.fqdn
}

output "mysql_id" {
    value = azurerm_mysql_flexible_server.mysql-server.id
}