variable "access_analyzer_name" {
  description = "The name of the analyzer."
  default     = "account-default"
  type        = string
}

variable "access_analyzer_type" {
  description = "The type of analyzer, ACCOUNT or ORGANIZATION."
  default     = "ACCOUNT"
  type        = string
}
