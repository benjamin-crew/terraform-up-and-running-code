variable "user_names" {
  description = "Create AAD users with these names"
  type = list(string)
  default = ["neo", "trinity", "morpheus"]
}

variable "domain_name" {
  default = "benncrew94gmail.onmicrosoft.com" 
}