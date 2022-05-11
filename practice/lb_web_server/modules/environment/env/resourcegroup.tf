resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "uksouth"

  tags = var.rg_tags
}