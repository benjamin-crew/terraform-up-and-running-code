resource "azurerm_network_security_rule" "vmss_ssh_rule" {
  name                        = "ssh"
  priority                    = 1950
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = module.network.resource_group_name
  network_security_group_name = module.network.vmss_nsg_name

  depends_on = [
    module.network
  ]
}

resource "azurerm_network_security_rule" "vmss_httpd_rule" {
  name                        = "httpd"
  priority                    = 1940
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.server_port
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = module.network.resource_group_name
  network_security_group_name = module.network.vmss_nsg_name

  depends_on = [
    module.network
  ]
}