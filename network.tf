module "network" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/network"
  depends_on = [module.project_with_user
  router_external_net_name = "external-network"
  router_name              = "${var.environment}-router"
  network_name             = "${var.environment}-network"
  subnet_cidr              = var.localnet
}