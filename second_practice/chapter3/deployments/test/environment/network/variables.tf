variable "resource_group_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-rg01"
}

variable "virtual_network_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-vnet01"
}

variable "virtual_network_address_space" {
  type    = string
  default = "172.18.100.0/24"
}

variable "subnet_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-sb01"
}

variable "subnet_address_space" {
  type    = string
  default = "172.18.100.0/28"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "nsg_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-nsg01"
}