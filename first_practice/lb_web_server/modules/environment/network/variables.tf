# Resource Group
variable "rg_name" {
  type = string
}


# Virtual Network
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "vnet_tags" {
  type = map(string)
}


# Subnets
variable "vmss_subnet_name" {
  type = string
}

variable "vmss_subnet_range" {
  type = list(string)
}
