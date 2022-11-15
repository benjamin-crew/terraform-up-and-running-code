terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "database" {
  source = "../../../../modules/data-stores/database"

  # Resource Group
  rg_name = var.rg_name

  mssql_database_name  = var.mssql_database_name
  mssql_server_name    = var.mssql_server_name
  mssql_login          = var.mssql_login
  mssql_login_password = var.mssql_login_password
}

