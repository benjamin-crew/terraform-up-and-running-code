provider "azurerm" {
    tenant_id            = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
    subscription_id      = "7c953d5a-e175-405e-bf11-a8cb0ecc9f09"
  features {}
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
  name                = "bc-uks-tst-tfupandrunning-linux-vm01_nic01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "bc-uks-tst-tfupandrunning-linux-vm01"
  computer_name = "terraform-example"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1ls"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

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
}