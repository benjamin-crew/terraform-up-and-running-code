variable "resource_group_name" {
  type    = string
  default = "bc-uks-tst-tfupandrunning-rg01"
}

variable "location" {
  type    = string
  default = "UK South"
}

# Storage Account
variable "storage_account_name" {
  type    = string
  default = "bcukststtfuandrsa01"
}