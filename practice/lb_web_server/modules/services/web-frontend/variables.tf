# Resource Group
variable "rg_name" {
  type = string
}

# Virtual Network
variable "vnet_name" {
  type = string
}

# Subnet
variable "vmss_subnet_name" {
  type = string
}


# Public IP
variable "public_ip_name" {
  type = string
}


# Network Security Group
variable "nsg_name" {
  type = string
}

variable "server_port" {
  type = string
}


# Network Interface Card
variable "nic_name" {
  type = string
}


# Virtual Machine Scale Set
variable "vmss_name" {
  type = string
}

variable "vmss_sku" {
  type = string
}

variable "vmss_username" {
  type = string
}

variable "vmss_password" {
  type = string
}


# Virtual Machine Scale Set Load Balancer
variable "vmss_lb_name" {
  type = string
}
