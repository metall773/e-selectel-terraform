module "win01" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/windows"
  depends_on = [module.project_with_user]
  # OpenStack Instance parameters.
  server_name         = "win01"
  server_zone         = var.server_zone
  server_vcpus        = 1
  server_ram_mb       = 4096
  server_root_disk_gb = 32
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain
  server_image_name   = "Windows Server 2016 Standard"
  admin_pass          = "Ghdbtn123!"
  server_second_volume_type = "fast.${var.server_zone}"
  server_second_disk_gb  = 26

  enable_floatingip   = true
}
