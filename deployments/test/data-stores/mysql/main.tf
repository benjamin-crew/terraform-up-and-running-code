terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.31.0"
    }
  }

  required_version = "~> 1.0"
}

module "mysql" {
  source = "../../../../modules/data-stores/mysql"

  resource_group_name = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  db_subnet_name = var.db_subnet_name
  mysql_server_name = var.mysql_server_name
  db_server_sku = var.db_server_sku
  administrator_login = var.administrator_login
  administrator_password = var.administrator_password

}