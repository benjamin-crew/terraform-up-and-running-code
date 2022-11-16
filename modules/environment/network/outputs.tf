output "resource_group_name" {
  value = data.azurerm_resource_group.deployment-environment-resource-group.name
}

output "vmss_nsg_name" {
  value = azurerm_network_security_group.vmss_nsg.name
}

output "db_nsg_name" {
  value = azurerm_network_security_group.db_nsg.name
}