terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
    tenant_id            = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id      = "7c953d5a-e175-405e-bf11-a8cb0ecc9f09"
  features {}
}

locals {
  custom_data = <<-EOF
            #!/bin/bash
            echo "Hello, World" > index.html
            nohup busybox httpd -f -p ${var.server_port} &
  EOF
  }

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type = number
  default = 8080
}

resource "azurerm_resource_group" "rg" {
  name     = "bc-uks-tst-tfupandrunning-rg01"
  location = "UK South"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "bc-uks-tst-tfupandrunning-vnet01"
  address_space       = ["172.18.100.0/24"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "bc-uks-tst-tfupandrunning-sb01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["172.18.100.0/24"]
}

resource "azurerm_network_interface" "nic" {
  name                = "bc-uks-tst-tfupandrunning-linux-nic01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = "bc-uks-tst-tfupandrunning-linux-nsg01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "SSH-Inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

    security_rule {
    name                       = "HTTP-Inbound"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = var.server_port
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_public_ip" "pip" {
  name                = "bc-uks-tst-tfupandrunning-linux-pip01"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "bc-uks-tst-tfupandrunning-linux-vm01"
  computer_name = "terraform-example"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1ls"
  admin_username      = "adminuser"
  admin_password = "Xkmmdj3hgvy"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  custom_data = base64encode(local.custom_data)
}

output "instance_ip" {
  value = azurerm_public_ip.pip.ip_address
}

# To output the ssh key:
# terraform output -raw tls_private_key > linux_vm1

# To ssh to the vm:
# ssh -i linux_vm1 azureuser@<public_ip_address>