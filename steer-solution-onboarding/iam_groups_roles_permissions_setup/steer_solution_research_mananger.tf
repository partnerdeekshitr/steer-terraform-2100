
resource "hsdp_iam_group" "research_owner_group" {
  name                  = "RESEARCHOWNERGROUP"
  roles                 = [hsdp_iam_role.research_manager_role.id]
  managing_organization = var.onboarding_iam_steer_org_id
}

resource "hsdp_iam_role" "research_manager_role" {
  name = "RESEARCHOWNERROLE"
  permissions = [
    "CDL.RESEARCHMANAGER.ALL"
  ]
  managing_organization = var.onboarding_iam_steer_org_id
}