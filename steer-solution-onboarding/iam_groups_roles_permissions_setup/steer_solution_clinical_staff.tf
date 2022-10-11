
resource "hsdp_iam_group" "clinical_staff_group" {
  for_each              = toset( var.clinical_staff_sites )
  name                  = "${each.value}_CLINICALSTAFFGROUP"
  roles                 = [hsdp_iam_role.clinical_staff_role.id]
  managing_organization = var.onboarding_iam_steer_org_id
}

resource "hsdp_iam_role" "clinical_staff_role" {
  name = "CLINICALSTAFFROLE"
  permissions = [
    "USER.READ"
  ]
  managing_organization = var.onboarding_iam_steer_org_id
}