/**
* # Terraform AWS Account Defaults S3
*
* With AWS S3 it was standard that every bucket is public, we would of course like to prevent this
* directly and configure it directly in the account. Sets the default S3 bucket ACLs and policies for the account
* to block any public access. A security best practice.
*/
resource "aws_s3_account_public_access_block" "main" {
  block_public_acls       = var.s3_account_public_access_block_public_acls
  block_public_policy     = var.s3_account_public_access_block_public_policy
  ignore_public_acls      = var.s3_account_public_access_ignore_public_acls
  restrict_public_buckets = var.s3_account_public_access_restrict_public_buckets
}
