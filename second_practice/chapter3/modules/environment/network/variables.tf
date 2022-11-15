# Resource Group
variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "virtual_network_address_space" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_space" {
  type = string
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "nsg_name" {
  type = string
}