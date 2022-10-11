
resource "hsdp_iam_group" "tenant_admin_group" {
  name                  = "TENANTADMINGROUP"
  roles                 = [hsdp_iam_role.tenant_admin_role.id]
  managing_organization = var.onboarding_iam_steer_org_id
}

resource "hsdp_iam_role" "tenant_admin_role" {
  name = "TENANTADMINROLE"
  permissions = [
    "CDL.TENANTADMIN.ALL"
  ]
  managing_organization = var.onboarding_iam_steer_org_id
}