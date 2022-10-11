<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# Onboarding 

Key Persona:

`clinical_staff` : Clinical Staff

`master_trainer`: Trial Admin

`research_manager`: Site Clinician

`technical_admin`: Technical Admin

`tenant_admin`: Tenant Admin

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

1. Enter valid values in config/steer.tfvars
2. Mention the sites in an array in variables.tf
   Example as mentioned below : -

    variable "clinical_staff_sites" {
    description = "clinical staff sites"
    type        = list(string)
    default     = ["SITEA", "SITEB" ..... "SITEZ"]
    }


## Execute:

```sh
cd iam_groups_roles_permissions_setup
terraform init
terraform plan --var-file=config/steer.tfvars
terraform apply --var-file=config/steer.tfvars
```
To Destroy reources:
```sh
terraform destroy --var-file=config/steer.tfvar
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
