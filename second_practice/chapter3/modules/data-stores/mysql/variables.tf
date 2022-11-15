# Resource Group
variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "db_subnet_name" {
  type = string
}

variable "mysql_server_name" {
  type = string
  default = "B_Standard_B1s"
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