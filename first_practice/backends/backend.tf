terraform {
  backend "azurerm" {
    tenant_id = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id = "6cccbd05-d4b4-4c02-ae46-dc28838004bf"
    resource_group_name  = "backendtest-rg"
    storage_account_name = "backendtestbc01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
