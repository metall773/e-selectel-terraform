locals {
  os_project_name = "${var.project_name}-${var.environment}-env"
  dns_domain      = "${var.environment}.selectel.e-tiketka.com"
  user_name       = "${var.environment}-tf-user"
}

provider "openstack" {
  user_name           = var.os_user_name
  tenant_name         = var.os_project_name
  password            = var.os_user_password
  project_domain_name = var.os_domain_name
  user_domain_name    = var.os_domain_name
  auth_url            = var.os_auth_url
  region              = var.os_region
}