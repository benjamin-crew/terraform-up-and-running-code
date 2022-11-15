# Resource Group
variable "rg_name" {
  type = string
}

variable "mssql_database_name" {
  type = string
}
variable "mssql_server_name" {
  type = string
}
variable "mssql_login" {
  type = string
}
variable "mssql_login_password" {
  type      = string
  sensitive = true
}
