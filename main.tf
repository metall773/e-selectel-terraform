locals {
  os_project_name = "${var.project_name}-${var.environment}-env"
  dns_domain      = "${var.environment}.selectel.e-tiketka.com"
  user_name       = "${var.environment}-tf-user"
}

provider "openstack" {
  os_project_name  = local.os_project_name
  os_user_name     = local.user_name
  os_user_password = var.user_password
  os_domain_name   = var.sel_account
  os_auth_url      = var.os_auth_url
  os_region        = var.os_region
}