/**
* # Terraform AWS Account Defaults Cloudwatch
*
* Each RDS instance writes its OS metrics to the same Cloudwatch Log Group. This is automatically created by AWS and
* is therefore not under control with Terraform. Since the data in it gets very large very quickly, we want to at least
* configure retention of the data.
*
* It is not possible to encrypt this Cloudwatch Log Group, otherwise AWS RDS will not be able to write to it because
* they do not have access to the AWS KMS. But we want to set the retention_in_days in Terraform.
*
* How to import when already exists
* terraform import 'aws_cloudwatch_log_group.rds_log_group' 'RDSOSMetrics'
*/
resource "aws_cloudwatch_log_group" "rdsosmetrics" {
  name              = "RDSOSMetrics"
  retention_in_days = var.cloudwatch_log_group_rdsosmetrics_retention_in_days

  tags = var.tags
}
