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

# Subnet
variable "vmss_subnet_name" {
  type    = string
  default = "vmss-sb01"
}


# Public IP
variable "public_ip_name" {
  type    = string
  default = "test-pip01"
}

# Network Security Group
variable "nsg_name" {
  type    = string
  default = "test-nsg01"
}

variable "server_port" {
  type    = string
  default = "80"
}

# Network Interface Card
variable "nic_name" {
  type    = string
  default = "test-nic01"
}


# Virtual Machine Scale Set
variable "vmss_name" {
  type    = string
  default = "test-vmss01"
}

variable "vmss_sku" {
  type    = string
  default = "Standard_B1s"
}

variable "vmss_username" {
  type    = string
  default = "benja"
}

variable "vmss_password" {
  type    = string
  default = "Xm5n&dksnxuyYUAb24x.sjx"
}


# Virtual Machine Scale Set Load Balancer
variable "vmss_lb_name" {
  type    = string
  default = "test-lb01"
}


# Provider
variable "AZURE_SUBSCRIPTION_ID" {}
variable "AZURE_TENANT_ID" {}
variable "AZURE_CLIENT_ID" {}
variable "AZURE_CLIENT_SECRET" {}