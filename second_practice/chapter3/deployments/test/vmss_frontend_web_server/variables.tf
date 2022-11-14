variable "resource_group_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-rg01"
}

variable "virtual_network_name" {
  type = string
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