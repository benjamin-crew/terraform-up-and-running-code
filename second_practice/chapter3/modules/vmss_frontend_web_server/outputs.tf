output "public_ip" {
  description = "The public IP address of the web server"
  value       = azurerm_public_ip.public_ip.ip_address
}