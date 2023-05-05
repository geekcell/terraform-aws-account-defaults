<!-- BEGIN_TF_DOCS -->
# Terraform AWS Account Defaults IAM Account Password Policy

Sets a strong default password policy for the AWS account. Should be compliant with most cloud security monitoring
tools.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_account_password_policy_allow_users_to_change_password"></a> [iam\_account\_password\_policy\_allow\_users\_to\_change\_password](#input\_iam\_account\_password\_policy\_allow\_users\_to\_change\_password) | Whether to allow users to change their own password. | `bool` | `true` | no |
| <a name="input_iam_account_password_policy_hard_expiry"></a> [iam\_account\_password\_policy\_hard\_expiry](#input\_iam\_account\_password\_policy\_hard\_expiry) | Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset). | `bool` | `false` | no |
| <a name="input_iam_account_password_policy_max_password_age"></a> [iam\_account\_password\_policy\_max\_password\_age](#input\_iam\_account\_password\_policy\_max\_password\_age) | The number of days that an user password is valid. | `number` | `90` | no |
| <a name="input_iam_account_password_policy_minimum_password_length"></a> [iam\_account\_password\_policy\_minimum\_password\_length](#input\_iam\_account\_password\_policy\_minimum\_password\_length) | Minimum length to require for user passwords. | `number` | `12` | no |
| <a name="input_iam_account_password_policy_password_reuse_prevention"></a> [iam\_account\_password\_policy\_password\_reuse\_prevention](#input\_iam\_account\_password\_policy\_password\_reuse\_prevention) | The number of previous passwords that users are prevented from reusing. | `number` | `24` | no |
| <a name="input_iam_account_password_policy_require_lowercase_characters"></a> [iam\_account\_password\_policy\_require\_lowercase\_characters](#input\_iam\_account\_password\_policy\_require\_lowercase\_characters) | Whether to require lowercase characters for user passwords. | `bool` | `true` | no |
| <a name="input_iam_account_password_policy_require_numbers"></a> [iam\_account\_password\_policy\_require\_numbers](#input\_iam\_account\_password\_policy\_require\_numbers) | Whether to require numbers for user passwords. | `bool` | `true` | no |
| <a name="input_iam_account_password_policy_require_symbols"></a> [iam\_account\_password\_policy\_require\_symbols](#input\_iam\_account\_password\_policy\_require\_symbols) | Whether to require symbols for user passwords. | `bool` | `true` | no |
| <a name="input_iam_account_password_policy_require_uppercase_characters"></a> [iam\_account\_password\_policy\_require\_uppercase\_characters](#input\_iam\_account\_password\_policy\_require\_uppercase\_characters) | Whether to require uppercase characters for user passwords. | `bool` | `true` | no |

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Resources

- resource.aws_iam_account_password_policy.main (modules/iam_password_policy/main.tf#7)
<!-- END_TF_DOCS -->
