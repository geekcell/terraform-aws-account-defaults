/**
* # Terraform AWS Account Defaults IAM Account Password Policy
*
* Sets a strong default password policy for the AWS account. Should be compliant with most cloud security monitoring
* tools.
*/
resource "aws_iam_account_password_policy" "main" {
  allow_users_to_change_password = var.iam_account_password_policy_allow_users_to_change_password
  hard_expiry                    = var.iam_account_password_policy_hard_expiry

  max_password_age          = var.iam_account_password_policy_max_password_age
  password_reuse_prevention = var.iam_account_password_policy_password_reuse_prevention

  minimum_password_length      = var.iam_account_password_policy_minimum_password_length
  require_lowercase_characters = var.iam_account_password_policy_require_lowercase_characters
  require_uppercase_characters = var.iam_account_password_policy_require_uppercase_characters
  require_numbers              = var.iam_account_password_policy_require_numbers
  require_symbols              = var.iam_account_password_policy_require_symbols
}
