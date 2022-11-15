# Resource Group
variable "rg_name" {
  type    = string
  default = "learn-tf-rg01"
}

# Database
variable "mssql_server_name" {
  type    = string
  default = "bctestsqlserver"
}

variable "mssql_database_name" {
  type    = string
  default = "bctestsqldb"
}

variable "mssql_login" {
  type      = string
  sensitive = true
}

variable "mssql_login_password" {
  type      = string
  sensitive = true
}