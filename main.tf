locals {
  os_project_name = "${var.project_name}-${var.environment}-env"
  dns_domain      = "${var.environment}.selectel.e-tiketka.com"
  user_name       = "${var.environment}-tf-user"

  bitrix_vm = {
    "catalog-merlion"  = { 
        server_vcpus        = 4
        server_ram_mb       = 8
        server_root_disk_gb = 80
      },
    "multibonus"  = { 
        server_vcpus        = 4
        server_ram_mb       = 8
        server_root_disk_gb = 80
      },
    "urozhai"    = = { 
        server_vcpus        = 4
        server_ram_mb       = 8
        server_root_disk_gb = 80
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