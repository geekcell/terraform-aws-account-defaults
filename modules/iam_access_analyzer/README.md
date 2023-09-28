<!-- BEGIN_TF_DOCS -->
# Terraform AWS Account Defaults Access Analyzer

Creates an AWS Access Analyzer for the account or organization.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_analyzer_name"></a> [access\_analyzer\_name](#input\_access\_analyzer\_name) | The name of the analyzer. | `string` | `"account-default"` | no |
| <a name="input_access_analyzer_type"></a> [access\_analyzer\_type](#input\_access\_analyzer\_type) | The type of analyzer, ACCOUNT or ORGANIZATION. | `string` | `"ACCOUNT"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Resources

- resource.aws_accessanalyzer_analyzer.main (modules/iam_access_analyzer/main.tf#6)
<!-- END_TF_DOCS -->
