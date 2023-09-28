/**
 * # Terraform AWS Account Defaults
 *
 * This module takes care of some general account-wide settings in the running AWS account. See the documentation for
 * each module for more information. All modules are enabled by default.
 */
module "s3" {
  count  = var.enable_s3_defaults ? 1 : 0
  source = "./modules/s3"
}

module "cloudwatch" {
  count  = var.enable_cloudwatch_defaults ? 1 : 0
  source = "./modules/cloudwatch"

  tags = var.tags
}

module "iam_account_password_policy" {
  count  = var.enable_iam_account_password_policy ? 1 : 0
  source = "./modules/iam_password_policy"
}

module "iam_access_analyzer" {
  count  = var.enable_iam_access_analyzer ? 1 : 0
  source = "./modules/iam_access_analyzer"

  tags = var.tags
}
