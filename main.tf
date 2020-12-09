locals {
  os_project_name = "${var.project_name}-${var.environment}-env"
  dns_domain      = "${var.environment}.selectel.xj7.ru"
  user_name       = "${var.environment}-tf-user"

  bitrix_vm = {
    "bitrix" = {
      server_vcpus        = 1
      server_ram_mb       = 3072
      server_root_disk_gb = 8
    }
  }
}

provider "openstack" {
  user_name           = local.user_name
  tenant_name         = local.os_project_name
  password            = var.user_password
  project_domain_name = var.sel_account
  user_domain_name    = var.sel_account
  auth_url            = var.os_auth_url
  region              = var.os_region
}