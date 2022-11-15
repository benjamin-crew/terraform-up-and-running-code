variable "resource_group_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-rg01"
}

variable "virtual_network_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-vnet01"
}

variable "db_subnet_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-sb02"
}

variable "mysql_server_name" {
  type = string
  default = "bc-uks-tst-tfupandrunning-mysql01"
}

variable "db_server_sku" {
  type = string
  default = "B_Standard_B1s"
}

variable "administrator_login" {
  type = string
  default = "mysqladmin"
}

variable "administrator_password" {
  type = string
  sensitive = true
}