provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }

  # Specify subscription
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  tenant_id       = var.AZURE_TENANT_ID

  # SPN Details
  client_id     = var.AZURE_CLIENT_ID
  client_secret = var.AZURE_CLIENT_SECRET
}