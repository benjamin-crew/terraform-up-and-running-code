# Resource Group
variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}

variable "rg_tags" {
  type = map(string)
}

# Storage Account
variable "storage_account_name" {
  type = string
}

variable "sa_tags" {
  type = map(any)
}