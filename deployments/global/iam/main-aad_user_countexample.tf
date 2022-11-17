# # Example of how to create users with a count
# resource "azuread_user" "aad_users_count_example" {
#   count = 3
  
#   user_principal_name = "jdoe${count.index}@hashicorp.com"
#   given_name = "Jane"
#   surname = "Doe"
#   display_name        = "J. Doe"
#   mail_nickname       = "jdoe"
#   password            = "SecretP@sswd99!"
# }

#Example of how to create users with count and username variables
# resource "azuread_user" "aad_users" {
#   count = 3
  
#   user_principal_name = "${var.user_names[count.index]}@hashicorp.com"
#   given_name = "Jane"
#   surname = "Doe"
#   display_name        = "J. Doe"
#   mail_nickname       = "jdoe"
#   password            = "SecretP@sswd99!"
# }

# Note that after you’ve used count on a resource, it becomes an array of resources rather than just one resource.
# Because aws_iam_user.example is now an array of IAM users, instead of using the standard syntax to read an attribute from
# that resource (<PROVIDER>_<TYPE>.<NAME>.<ATTRIBUTE>), you must specify which IAM user you’re interested in by
# specifying its index in the array using the same array lookup syntax:

  # <PROVIDER>_<TYPE>.<NAME>[INDEX].ATTRIBUTE

# For example, if you want to provide the Amazon Resource Name (ARN) of the first IAM user in 
# the list as an output variable, you would need to do the following:

  # output"first_arn"{
  # value=aws_iam_user.example[0].arn
  # description="The ARN for the first user"
  # }

# If you want the ARNs of all of the IAM users, you need to use a splat expression, “*”, instead of the index:

  # output"all_arns"{
  # value=aws_iam_user.example[*].arn
  # description="The ARNs for all users"
  # }