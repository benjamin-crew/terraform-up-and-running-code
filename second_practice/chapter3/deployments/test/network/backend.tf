terraform {
  backend "azurerm" {
    tenant_id            = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id      = "7c953d5a-e175-405e-bf11-a8cb0ecc9f09"
    resource_group_name  = "bc-uks-tst-tfupandrunning-rg01"
    storage_account_name = "bcukststtfuandrsa01"
    container_name       = "tfstate"
    key                  = "network.tfstate"
  }
}
