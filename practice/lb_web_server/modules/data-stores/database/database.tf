resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.mssql_server_name
  resource_group_name          = data.azurerm_resource_group.rg.name
  location                     = data.azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.mssql_login
  administrator_login_password = var.mssql_login_password
  connection_policy = "Redirect"
}

resource "azurerm_mssql_database" "mssql_database" {
  name           = var.mssql_database_name
  server_id      = azurerm_mssql_server.mssql_server.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name     = "GP_S_Gen5_1"
  min_capacity = 1
  max_size_gb = 10
  zone_redundant = false
  geo_backup_enabled = false
  auto_pause_delay_in_minutes = 60
}

resource "azurerm_mssql_firewall_rule" "mssql_firewall_rule" {
  name             = "AzureAccess"
  server_id        = azurerm_mssql_server.mssql_server.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}