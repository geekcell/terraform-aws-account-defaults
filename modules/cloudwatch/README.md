<!-- BEGIN_TF_DOCS -->
# Terraform AWS Account Defaults Cloudwatch

Each RDS instance writes its OS metrics to the same Cloudwatch Log Group. This is automatically created by AWS and
is therefore not under control with Terraform. Since the data in it gets very large very quickly, we want to at least
configure retention of the data.

It is not possible to encrypt this Cloudwatch Log Group, otherwise AWS RDS will not be able to write to it because
they do not have access to the AWS KMS. But we want to set the retention\_in\_days in Terraform.

How to import when already exists
terraform import 'aws\_cloudwatch\_log\_group.rds\_log\_group' 'RDSOSMetrics'

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_log_group_rdsosmetrics_retention_in_days"></a> [cloudwatch\_log\_group\_rdsosmetrics\_retention\_in\_days](#input\_cloudwatch\_log\_group\_rdsosmetrics\_retention\_in\_days) | The number of days log events are kept in CloudWatch Logs for the default RDSOSMetrics group. | `number` | `365` | no |

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Resources

- resource.aws_cloudwatch_log_group.rdsosmetrics (modules/cloudwatch/main.tf#14)
<!-- END_TF_DOCS -->
