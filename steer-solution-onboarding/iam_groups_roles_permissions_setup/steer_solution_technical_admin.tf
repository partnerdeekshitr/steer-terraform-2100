
resource "hsdp_iam_group" "technical_admin_group" {
  name                  = "TECHNICALADMINGROUP"
  roles                 = [hsdp_iam_role.technical_admin_role.id]
  managing_organization = var.onboarding_iam_steer_org_id
}

resource "hsdp_iam_role" "technical_admin_role" {
  name = "TECHNICALADMINROLE"
  permissions = [
    "USER.READ"
  ]
  managing_organization = var.onboarding_iam_steer_org_id
}