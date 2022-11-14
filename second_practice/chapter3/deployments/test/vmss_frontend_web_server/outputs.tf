output "public_ip" {
  description = "The public IP address of the web server"
  value       = module.vmss_frontend_web_server.public_ip
}