# output "first_user" {
#     description = "The ARN for the first user"
#     value=azuread_user.aad_users[0].user_principal_name
# }

# output "all_users" {
#     description = "The ARN for all users"
#     value=azuread_user.aad_users[*].user_principal_name
# }



# To view the sensitive output:
#   terraform plan -out=tfplan
#   terraform show -json tfplan
output "all_users" {
  value=azuread_user.aad_users
  sensitive = true
}