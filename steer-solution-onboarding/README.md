# Overview

This Terraform script is used to create Groups/Roles/Permissions for Clinical Staff/Master Trainer/Technical Admin/Tenant Admin

# Onboarding 

Key Personas:
```sh
`clinical_staff` (Clinical Staff/Institute coordinator) : 
Group: SITEA_CLINICALSTAFFGROUP/SITEB_CLINICALSTAFFGROUP........SITEZ_CLINICALSTAFFGROUP
Role: CLINICALSTAFFROLE
Permission: USER.READ
```
```sh
`master_trainer` (Master Trainer/Study Manager): 
Group: MASTERTRAINERGROUP
Role: MASTERTRAINERROLE
Permission: USER.READ
```
```sh
`research_manager` (Technical Admin/Research Manager): 
Group: RESEARCHOWNERGROUP
Role: RESEARCHOWNERROLE
Permission: CDL.RESEARCHMANAGER.ALL
```
```sh
`technical_admin` (Technical Admin/Study Owner): 
Group: TECHNICALADMINGROUP
Role: TECHNICALADMINROLE
Permission: USER.READ
```
```sh
`tenant_admin` (Tenant Admin): 
Group: TENANTADMINGROUP
Role: TENANTADMINROLE
Permission: CDL.TENANTADMIN.ALL
```
## Requirements

| Name | Version |
|------|---------|
| hsdp | = 0.38.4 |

## Providers

| Name | Version |
|------|---------|
| hsdp | = 0.38.4 |


## How To 

*Default terraform state files are stored locally and preferred & recommended to have them stored in S3.*

Check Store terraform state in S3

https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/guides/state

*Please note*: `terraform init` needs to be adapted below

**Use Terraform Workspace to manage env 
```sh
terraform workspace list
terraform workspace new steer
terraform workspace select steer
```

## Preparation

Enter valid values in config/steer.tfvars

## Execute:

```sh
cd iam_groups_roles_permissions_setup
terraform init
terraform plan --var-file=config/steer.tfvars
terraform apply --var-file=config/steer.tfvars
```
To Destroy resources:
```sh
terraform destroy --var-file=config/steer.tfvars
```

To enable local logs - allowed values `[TRACE DEBUG INFO WARN ERROR OFF]`:
```sh
export TF_LOG=DEBUG && export TF_LOG_PATH="terraform.log"
export TF_LOG=OFF && export TF_LOG_PATH="terraform.log
```

## Modules

No Modules.

## Resources

| Name |
|------|
| [hsdp_iam_group](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/resources/iam_group) |
| [hsdp_iam_role](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/resources/iam_role) |
