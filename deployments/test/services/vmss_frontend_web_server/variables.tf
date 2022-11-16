variable "resource_group_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-rg01"
}

variable "virtual_network_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-vnet01"
}

variable "vmss_subnet_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-sb01"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "vmss_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-vmss-01"
}

variable "vmss_sku" {
  type    = string
  default = "Standard_B1ls"
}

variable "vmss_password" {
    type = string
    sensitive = true
}

variable "vmss_instances" {
  type    = number
  default = 1
}

variable "pip_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-pip-01"
}

variable "vmss_lb_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-vmss-lb-01"
}

variable "mysql_server_name" {
  type = string
  default = "tfupandrunningdb"
}