module "full" {
  source = "../../"

  enable_s3_defaults                 = true
  enable_cloudwatch_defaults         = true
  enable_iam_account_password_policy = true
}
