resource "azurerm_storage_container" "tfstate-sc" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate-storage-account.name
  container_access_type = "private"
}