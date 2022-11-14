# Resource Group
variable "resource_group_name" {
  type = string
}

# Storage Account
variable "storage_account_name" {
  type = string
}


variable "virtual_network_name" {
  type = string "bc-uks-tst-tfupandrunning-vnet01"
  }

variable "virtual_network_address_space" {
  type = string
  "172.18.100.0/24"
}

variable "virtual_network_subnet_name" {
  "bc-uks-tst-tfupandrunning-sb01""
  ["172.18.100.0/28"]
}

variable "virtual_network_subnet_address_space" {
  type = string
  ["172.18.100.0/28"]
}
