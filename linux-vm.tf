locals {
  os_project_name = format("%s-%s-env", var.project_name, var.environment) 
}

#module "bitrix01" {
#  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/server_local_root_disk"
#
#  # OpenStack auth.
#  os_project_name  = local.os_project_name
#  os_user_name     = var.user_name
#  os_user_password = var.user_password
#  os_domain_name   = var.sel_account
#  os_auth_url      = var.os_auth_url
#  os_region        = var.os_region
#
#  # OpenStack Instance parameters.
#  server_name         = var.server_name
#  server_zone         = var.server_zone
#  server_vcpus        = var.server_vcpus
#  server_ram_mb       = var.server_ram_mb
#  server_root_disk_gb = var.server_root_disk_gb
#  server_image_name   = var.server_image_name
#  server_ssh_key      = file("~/.ssh/id_rsa.pub")
#  server_ssh_key_user = module.project_with_user.user_id
#
#  vm_packages_4_install = "mc nmon htop"
#  vm_install_autoupdate = "yes"
#  vm_install_fail2ban   = "yes"
#  vm_firewall_udp_ports = ""
#  vm_firewall_tcp_ports = "22 80 443"
#  vm_install_bitrix     = "yes"
#  vm_install_bitrix_crm = "no"
#  vm_admin-username     = var.user_name
#}

module "lb01" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/server_local_root_disk"

  # OpenStack auth.
  os_project_name  = local.os_project_name
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
  server_image_name   = "CentOS 8 64-bit"
  server_ssh_key      = file("~/.ssh/id_rsa.pub")
  server_ssh_key_user = module.project_with_user.user_id

  vm_packages_4_install = "mc nmon htop nginx"
  vm_install_autoupdate = "yes"
  vm_install_fail2ban   = "yes"
  vm_firewall_udp_ports = ""
  vm_firewall_tcp_ports = "22 80 443"
  vm_install_bitrix     = "no"
  vm_install_bitrix_crm = "no"
  vm_admin-username     = var.user_name
}