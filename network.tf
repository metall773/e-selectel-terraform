module "network" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/network"

  # OpenStack auth.
  os_project_name  = local.os_project_name
  os_user_name     = var.user_name
  os_user_password = var.user_password
  os_domain_name   = var.sel_account
  os_auth_url      = var.os_auth_url
  os_region        = var.os_region

  router_external_net_name = "${var.environment}-external_network"
  router_name              = "${var.environment}-router"
  network_name             = "${var.environment}-network"
  subnet_cidr              = "192.168.70.0/24"
}