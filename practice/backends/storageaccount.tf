resource "azurerm_storage_account" "sa" {
  name = "backendtestbc01"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  access_tier = "Hot"
  account_tier = "Standard"
  account_replication_type = "LRS"
  account_kind = "BlobStorage"
}