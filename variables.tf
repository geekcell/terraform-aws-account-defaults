variable "enable_s3_defaults" {
  default     = true
  description = "Enable the default that belongs to AWS S3."
  type        = bool
}

variable "enable_rds_defaults" {
  default     = true
  description = "Enable the default that belongs to AWS RDS."
  type        = bool
}
