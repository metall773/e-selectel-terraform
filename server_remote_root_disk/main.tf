# Initialize Selectel provider with token.
provider "selectel" {
  token = var.sel_token
}


# Create an OpenStack Compute instance.
module "server_remote_root_disk" {
  source = "../../../modules/vpc/server_remote_root_disk"

  # OpenStack auth.
  os_project_name  = var.project_name
  os_user_name     = var.user_name
  os_user_password = var.user_password
  os_domain_name   = var.sel_account
  os_auth_url      = var.os_auth_url
  os_region        = var.os_region

  # OpenStack Instance parameters.
  server_name         = var.server_name
  server_zone         = var.server_zone
  server_vcpus        = var.server_vcpus
  server_ram_mb       = var.server_ram_mb
  server_root_disk_gb = var.server_root_disk_gb
  server_volume_type  = var.server_volume_type
  server_image_name   = var.server_image_name
  server_ssh_key      = file("~/.ssh/id_rsa.pub")
  server_ssh_key_user = module.project_with_user.user_id
}
