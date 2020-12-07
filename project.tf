# Create the main project with user.
# This module should be applied first:
# terraform apply -target=module.project_with_user
module "project_with_user" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/project_with_user"

  project_name                  = local.os_project_name
  user_name                     = local.user_name
  user_password                 = var.user_password
  os_region                     = var.os_region
  server_zone                   = var.server_zone
  compute_cores_quotas          = var.compute_cores_quotas
  compute_ram_quotas            = var.compute_ram_quotas
  volume_gigabytes_basic_quotas = var.volume_gigabytes_basic_quotas
  volume_gigabytes_fast_quotas  = var.volume_gigabytes_fast_quotas
}