module "network" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/network"

  router_external_net_name = "${var.environment}-external_network"
  router_name              = "${var.environment}-router"
  network_name             = "${var.environment}-network"
  subnet_cidr              = "192.168.70.0/24"
}