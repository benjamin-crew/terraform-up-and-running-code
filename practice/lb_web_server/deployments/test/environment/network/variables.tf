# Resource Group
variable "rg_name" {
  type    = string
  default = "learn-tf-rg01"
}

# Virtual Network
variable "vnet_name" {
  type    = string
  default = "testvnet01"
}

variable "address_space" {
  type    = list(string)
  default = ["172.18.10.128/25"]
}

variable "vnet_tags" {
  type = map(string)
  default = {
    owner = "Ben"
    Usage = "vNet for test VMs"
  }
}

# Subnets
variable "vmss_subnet_name" {
  type    = string
  default = "vmss-sb01"
}

variable "vmss_subnet_range" {
  type    = list(string)
  default = ["172.18.10.128/27"]
}
