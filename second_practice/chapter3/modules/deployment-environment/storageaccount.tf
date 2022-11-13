resource "azurerm_storage_account" "tfstate-storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"
  versioning_enabled = true

  # lifecycle {
  #   prevent_destroy = true
  # }
}