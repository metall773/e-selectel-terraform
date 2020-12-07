module "lb01" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/centos"

  # OpenStack Instance parameters.
  server_name         = "lb01"
  server_zone         = var.server_zone
  server_vcpus        = 2
  server_ram_mb       = 3072
  server_root_disk_gb = 16
  server_ssh_key      = file("~/.ssh/id_rsa.pub")
  server_ssh_key_user = module.project_with_user.user_id
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain

  vm_packages_4_install = "mc nmon htop nginx"
  vm_firewall_tcp_ports = "22 80 443"
  vm_firewall_sshd_net  = var.localnet
  enable_floatingip     = true
}

module "bastion01" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/centos"

  # OpenStack Instance parameters.
  server_name         = "bastion01"
  server_zone         = var.server_zone
  server_vcpus        = 1
  server_ram_mb       = 2048
  server_root_disk_gb = 8
  server_ssh_key      = file("~/.ssh/id_rsa.pub")
  server_ssh_key_user = module.project_with_user.user_id
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain

  vm_packages_4_install = "mc nmon htop"
  vm_firewall_tcp_ports = "22"
  enable_floatingip     = true
}

module "bitrix" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/centos"

  # OpenStack Instance parameters.
  for_each            = local.bitrix_vm
  
  server_name         = each.key
  server_vcpus        = each.value.server_vcpus
  server_ram_mb       = each.value.server_ram_mb
  server_root_disk_gb = each.value.server_root_disk_gb

  server_zone         = var.server_zone
  server_image_name   = "CentOS 7 Minimal 64-bit"
  server_ssh_key      = file("~/.ssh/id_rsa.pub")
  server_ssh_key_user = module.project_with_user.user_id
  network_id          = module.network.network_id
  subnet_id           = module.network.subnet_id
  vm_dns_domain_id    = selectel_domains_domain_v1.domain.id
  vm_dns_domain_name  = local.dns_domain

  vm_packages_4_install = "mc nmon htop"
  vm_firewall_tcp_ports = "22 80 443"
  vm_firewall_sshd_net  = var.localnet
  vm_install_bitrix     = "yes"
}