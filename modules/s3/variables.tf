variable "s3_account_public_access_block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this account."
  default     = true
  type        = bool
}

variable "s3_account_public_access_block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this account."
  default     = true
  type        = bool
}

variable "s3_account_public_access_ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this account."
  default     = true
  type        = bool
}

variable "s3_account_public_access_restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this account."
  default     = true
  type        = bool
}
