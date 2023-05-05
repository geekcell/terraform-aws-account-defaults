<!-- BEGIN_TF_DOCS -->
# Terraform AWS Account Defaults S3

With AWS S3 it was standard that every bucket is public, we would of course like to prevent this
directly and configure it directly in the account. Sets the default S3 bucket ACLs and policies for the account
to block any public access. A security best practice.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_s3_account_public_access_block_public_acls"></a> [s3\_account\_public\_access\_block\_public\_acls](#input\_s3\_account\_public\_access\_block\_public\_acls) | Whether Amazon S3 should block public ACLs for this account. | `bool` | `true` | no |
| <a name="input_s3_account_public_access_block_public_policy"></a> [s3\_account\_public\_access\_block\_public\_policy](#input\_s3\_account\_public\_access\_block\_public\_policy) | Whether Amazon S3 should block public bucket policies for this account. | `bool` | `true` | no |
| <a name="input_s3_account_public_access_ignore_public_acls"></a> [s3\_account\_public\_access\_ignore\_public\_acls](#input\_s3\_account\_public\_access\_ignore\_public\_acls) | Whether Amazon S3 should ignore public ACLs for this account. | `bool` | `true` | no |
| <a name="input_s3_account_public_access_restrict_public_buckets"></a> [s3\_account\_public\_access\_restrict\_public\_buckets](#input\_s3\_account\_public\_access\_restrict\_public\_buckets) | Whether Amazon S3 should restrict public bucket policies for this account. | `bool` | `true` | no |

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Resources

- resource.aws_s3_account_public_access_block.main (modules/s3/main.tf#8)
<!-- END_TF_DOCS -->
