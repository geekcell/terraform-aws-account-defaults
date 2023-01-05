<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/template-terraform-module/main/docs/assets/logo.svg)](https://www.geekcell.io/)

<!--
Comment in these badges if they apply to the repository.

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-security-group)](https://github.com/geekcell/terraform-aws-security-group/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-security-group?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-security-group/releases)
[![Release](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-security-group/actions/workflows/linter.yaml)

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-security-group/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-security-group&benchmark=FEDRAMP+%28MODERATE%29)

-->

# Terraform AWS Account Defaults

This module takes care of the general settings in the running AWS account.

Each RDS instance writes its OS metrics to the same Cloudwatch Log Group. This is automatically created by AWS and is therefore not under control with Terraform. Since the data in it gets very large very quickly, we want to at least configure retention of the data.

With AWS S3 it is currently still standard that every bucket is public, we would of course like to prevent this directly and configure it directly in the account.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_rds_defaults"></a> [enable\_rds\_defaults](#input\_enable\_rds\_defaults) | Enable the default that belongs to AWS RDS. | `bool` | `true` | no |
| <a name="input_enable_s3_defaults"></a> [enable\_s3\_defaults](#input\_enable\_s3\_defaults) | Enable the default that belongs to AWS S3. | `bool` | `true` | no |

## Outputs

No outputs.

## Providers

No providers.

## Resources


# Examples
### Full
```hcl
module "complete" {
  source = "../../"

  enable_s3_defaults  = true
  enable_rds_defaults = true
}
```
### Minimum
```hcl
module "minimum" {
  source = "../../"
}
```
<!-- END_TF_DOCS -->
