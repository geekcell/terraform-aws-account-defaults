<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/.github/main/geekcell-github-banner.png)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-account-defaults)](https://github.com/geekcell/terraform-aws-account-defaults/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-account-defaults?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-account-defaults/releases)
[![Release](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-account-defaults/actions/workflows/linter.yaml)

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-account-defaults/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-account-defaults&benchmark=FEDRAMP+%28MODERATE%29)

# Terraform AWS Account Defaults

This module takes care of some general account-wide settings in the running AWS account. See the documentation for
each module for more information. All modules are enabled by default.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_cloudwatch_defaults"></a> [enable\_cloudwatch\_defaults](#input\_enable\_cloudwatch\_defaults) | Enable the Cloudwatch submodule. | `bool` | `true` | no |
| <a name="input_enable_iam_account_password_policy"></a> [enable\_iam\_account\_password\_policy](#input\_enable\_iam\_account\_password\_policy) | Enable the IAM Account Password Policy submodule. | `bool` | `true` | no |
| <a name="input_enable_s3_defaults"></a> [enable\_s3\_defaults](#input\_enable\_s3\_defaults) | Enable the S3 submodule. | `bool` | `true` | no |

## Outputs

No outputs.

## Providers

No providers.

## Resources


# Examples
### Full
```hcl
module "full" {
  source = "../../"

  enable_s3_defaults                 = true
  enable_cloudwatch_defaults         = true
  enable_iam_account_password_policy = true
}
```

### Minimum
```hcl
module "minimum" {
  source = "../../"
}
```
<!-- END_TF_DOCS -->
