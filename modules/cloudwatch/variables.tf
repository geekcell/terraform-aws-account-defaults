variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "cloudwatch_log_group_rdsosmetrics_retention_in_days" {
  description = "The number of days log events are kept in CloudWatch Logs for the default RDSOSMetrics group."
  default     = 365
  type        = number
}
