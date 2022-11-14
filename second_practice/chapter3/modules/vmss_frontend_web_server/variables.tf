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
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}