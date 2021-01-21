module "w1с" {
  source     = "github.com/metall773/e-selectel-terraform-modules.git//modules/vpc/windows"
  depends_on = [module.project_with_user]
  # OpenStack Instance parameters.
  server_name         = "w1с"
  server_zone         = var.server_zone
  server_vcpus        = 4
  server_ram_mb       = 32768
  server_root_disk_gb = 128
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain
  server_image_name   = "Windows Server 2016 Standard"
  license_type        = "license_windows_2016_standard"
  license_project_id  = module.project_with_user.project_id
  license_region      = var.os_region
  admin_pass          = var.win_admin_pass
  data_volumes = {
    "vol1_logs" = {
      size_gb     = 128
      volume_type = "universal.${var.server_zone}"
    }
    "vol2_docum" = {
      size_gb     = 64
      volume_type = "universal.${var.server_zone}"
    }
  }
}

module "wterm" {
  source     = "github.com/metall773/e-selectel-terraform-modules.git//modules/vpc/windows"
  depends_on = [module.project_with_user]
  # OpenStack Instance parameters.
  server_name         = "wterm"
  server_zone         = var.server_zone
  server_vcpus        = 2
  server_ram_mb       = 16384
  server_root_disk_gb = 128
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain
  server_image_name   = "Windows Server 2016 Standard"
  license_type        = "license_windows_2016_standard"
  license_project_id  = module.project_with_user.project_id
  license_region      = var.os_region
  admin_pass          = var.win_admin_pass
  data_volumes = {
    "vol1_baraholka" = {
      size_gb     = 48
      volume_type = "universal.${var.server_zone}"
    }
  }
  enable_floatingip = true
}

module "wdc" {
  source     = "github.com/metall773/e-selectel-terraform-modules.git//modules/vpc/windows"
  depends_on = [module.project_with_user]
  # OpenStack Instance parameters.
  server_name         = "wdc"
  server_zone         = var.server_zone
  server_vcpus        = 1
  server_ram_mb       = 4096
  server_root_disk_gb = 32
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain
  server_image_name   = "Windows Server 2012 R2 Standard"
  license_type        = "license_windows_2012_standard"
  license_project_id  = module.project_with_user.project_id
  license_region      = var.os_region
  admin_pass          = var.win_admin_pass
}
