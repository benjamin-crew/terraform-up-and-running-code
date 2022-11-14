resource "azurerm_network_security_rule" "ssh_rule" {
  name                        = "ssh"
  priority                    = 1950
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = module.network.data.azurerm_resource_group.deployment-environment-resource-group.name
  network_security_group_name = module.network.azurerm_network_security_group.nsg.name
}

resource "azurerm_network_security_rule" "httpd_rule" {
  name                        = "httpd"
  priority                    = 1940
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.server_port
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = module.network.data.azurerm_resource_group.deployment-environment-resource-group.name
  network_security_group_name = module.network.azurerm_network_security_group.nsg.name
}