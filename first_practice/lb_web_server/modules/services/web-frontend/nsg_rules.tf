locals {
  sql_gateways = {
    "sql-gateway1" = { rule_name = "sql-gateway1", dest_address = "51.105.64.32/29", priority = 117 },
    "sql-gateway2" = { rule_name = "sql-gateway2", dest_address = "51.105.72.32/29", priority = 116 },
    "sql-gateway3" = { rule_name = "sql-gateway3", dest_address = "51.140.144.32/29", priority = 115 }
  }
}

resource "azurerm_network_security_rule" "ssh_rule" {
  name                        = "ssh"
  priority                    = 120
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = data.azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

resource "azurerm_network_security_rule" "httpd_rule" {
  name                        = "httpd"
  priority                    = 119
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = var.server_port
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = data.azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

resource "azurerm_network_security_rule" "sql_region_rule" {
  name                        = "sql-region"
  priority                    = 118
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  source_address_prefix       = "*"
  destination_port_range      = "11000-11999"
  destination_address_prefix  = "Sql.UKSouth"
  resource_group_name         = data.azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

resource "azurerm_network_security_rule" "sql_gateway_rule" {
  for_each = local.sql_gateways

  name                        = each.value.rule_name
  priority                    = each.value.priority
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  source_address_prefix       = "*"
  destination_port_range      = "1433"
  destination_address_prefix  = each.value.dest_address
  resource_group_name         = data.azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}