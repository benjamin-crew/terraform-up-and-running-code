resource "azurerm_lb_probe" "vmss_probe" {
  loadbalancer_id     = azurerm_lb.vmss_lb.id
  name                = "ssh-running-probe"
  port                = var.server_port
}