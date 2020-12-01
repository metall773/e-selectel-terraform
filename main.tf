locals {
  os_project_name = "${var.project_name}-${var.environment}-env"
  dns_domain      = "${var.environment}.selectel.e-tiketka.com"
  user_name       = "${var.environment}-tf-user"
}

provider "openstack" {
fix2  user_name           = local.user_name
  tenant_name         = local.os_project_name
  password            = var.user_password
  project_domain_name = var.sel_account
  user_domain_name    = var.sel_account
  auth_url            = var.os_auth_url
  region              = var.os_region
}