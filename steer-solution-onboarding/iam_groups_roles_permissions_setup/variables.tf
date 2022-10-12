variable "onboarding_iam_steer_org_id" {
  description = "IAM organization (GUID) STEER"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.onboarding_iam_steer_org_id))
    error_message = "The onboarding_iam_org_id value must be a valid GUID."
  }
}

variable "clinical_staff_sites" {
  description = "clinical staff sites"
  type        = list(string)
}

variable "region" {
  description = "Region"
  type        = string
  default     = "eu-west"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "client-test"
}

variable "oauth2_client_id" {
  description = "OAuth2 Client ID"
  type        = string
}
variable "oauth2_password" {
  description = "OAuth2 Client Password"
  type        = string
}
variable "org_admin_username" {
  description = "Org Admin User"
  type        = string
}
variable "org_admin_password" {
  description = "Org Admin Password"
  type        = string
}