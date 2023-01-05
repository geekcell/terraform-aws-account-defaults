/**
 * # Terraform AWS Account Defaults
 *
 * This module takes care of the general settings in the running AWS account.
 *
 * Each RDS instance writes its OS metrics to the same Cloudwatch Log Group. This is automatically created by AWS and is therefore not under control with Terraform. Since the data in it gets very large very quickly, we want to at least configure retention of the data.
 *
 * With AWS S3 it is currently still standard that every bucket is public, we would of course like to prevent this directly and configure it directly in the account.
 *
 */

module "s3" {
  count = var.enable_s3_defaults == true ? 1 : 0
  source = "./modules/s3"
}

module "rds" {
  count = var.enable_s3_defaults == true ? 1 : 0
  source = "./modules/rds"
}
