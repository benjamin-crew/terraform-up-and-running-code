variable "resource_group_name" {
  type = string
}

variable "vmss_subnet_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "vmss_password" {
  type = string
  sensitive = true
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "vmss_name" {
  type = string
}

variable "vmss_sku" {
  type = string
}

variable "vmss_instances" {
  type = number
}

variable "pip_name" {
  type = string
}

variable "vmss_lb_name" {
  type = string
}