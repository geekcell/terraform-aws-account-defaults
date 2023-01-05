variable "enable_s3_defaults" {
  description = "Enable the default that belongs to AWS S3."
  default     = true
  type        = bool
}

variable "enable_rds_defaults" {
  description = "Enable the default that belongs to AWS RDS."
  default     = true
  type        = bool
}
