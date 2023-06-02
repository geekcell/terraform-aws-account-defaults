/**
* # Terraform AWS Account Defaults Access Analyzer
*
* Creates an AWS Access Analyzer for the account or organization.
*/
resource "aws_accessanalyzer_analyzer" "main" {
  analyzer_name = var.access_analyzer_name
  type          = var.access_analyzer_type
}
