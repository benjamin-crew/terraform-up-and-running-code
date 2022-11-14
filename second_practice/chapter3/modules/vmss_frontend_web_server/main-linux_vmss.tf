resource "azurerm_linux_virtual_machine_scale_set" "vmss" {
  name                            = "bc-uks-tst-tfupandrunning-vmss-01"
  resource_group_name             = data.azurerm_resource_group.deployment-environment-resource-group.name
  location                        = data.azurerm_resource_group.deployment-environment-resource-group.location
  sku                             = "Standard_B1ls"
  instances                       = 1
  admin_username                  = "adminuser"
  admin_password                  = var.vmss_password
  disable_password_authentication = false
  custom_data                     = filebase64("../../../modules/vmss_frontend_web_server/run_apache.sh")

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  network_interface {
    name    = "vm_scale_set_interface"
    primary = true

    ip_configuration {
      name                                   = "internal"
      primary                                = true
      subnet_id                              = data.azurerm_subnet.vmss_subnet_name.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.backendpool.id]
    }
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  lifecycle {
    ignore_changes = [instances]
  }
}