# Example of how to create users with for_each and username variables
resource "azuread_user" "aad_users" {
  for_each = toset(var.user_names)
  
  user_principal_name = "${each.value}@${var.domain_name}"
  given_name = "Jane"
  surname = "Doe"
  display_name        = "J. Doe"
  mail_nickname       = "jdoe"
  password            = "SecretP@sswd99!"
}