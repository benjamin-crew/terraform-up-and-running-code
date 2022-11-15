# Resource Group
variable "rg_name" {
  type    = string
  default = "learn-tf-rg01"
}

variable "rg_location" {
  type    = string
  default = "uksouth"
}

variable "rg_tags" {
  type = map(any)
  default = {
    owner = "Benjamin Crew"
    usage = "Resource group to store tf-learn resources."
  }
}

# Storage Account
variable "storage_account_name" {
  type    = string
  default = "bctstlearntf01"
}

variable "sa_tags" {
  type = map(any)
  default = {
    owner = "Benjamin Crew"
    usage = "Storage account to host tfstate."
  }
}