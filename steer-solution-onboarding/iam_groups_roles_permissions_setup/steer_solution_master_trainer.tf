
resource "hsdp_iam_group" "master_trainer_group" {
  name                  = "MASTERTRAINERGROUP"
  roles                 = [hsdp_iam_role.master_trainer_role.id]
  managing_organization = var.onboarding_iam_steer_org_id
}

resource "hsdp_iam_role" "master_trainer_role" {
  name = "MASTERTRAINERROLE"
  permissions = [
    "USER.READ"
  ]
  managing_organization = var.onboarding_iam_steer_org_id
}