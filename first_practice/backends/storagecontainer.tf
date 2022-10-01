resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "containertwo" {
  name                  = "bensstorage"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}