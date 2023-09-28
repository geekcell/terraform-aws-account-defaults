variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

## S3 PUBLIC ACCESS
variable "enable_s3_defaults" {
  description = "Enable the S3 submodule."
  default     = true
  type        = bool
}

## CLOUDWATCH
variable "enable_cloudwatch_defaults" {
  description = "Enable the Cloudwatch submodule."
  default     = true
  type        = bool
}

## IAM ACCOUNT PASSWORD POLICY
variable "enable_iam_account_password_policy" {
  description = "Enable the IAM Account Password Policy submodule."
  default     = true
  type        = bool
}

## IAM ACCESS ANALYZER
variable "enable_iam_access_analyzer" {
  description = "Enable the IAM Access Analyzer submodule."
  default     = true
  type        = bool
}
