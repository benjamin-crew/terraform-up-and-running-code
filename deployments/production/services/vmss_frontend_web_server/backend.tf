terraform {
  backend "azurerm" {
    tenant_id            = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id      = "4f0c64ca-897a-458d-9574-dda8d1dfe663"
    resource_group_name  = "bc-uks-prd-tfupandrunning-rg01"
    storage_account_name = "bcuksprdtfuandrsa01"
    container_name       = "tfstate"
    key                  = "vmss_frontend_web_server.tfstate"
  }
}
