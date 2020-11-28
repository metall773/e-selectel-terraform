module "network" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/network"

  router_external_net_name = "external_network"
  router_name              = "router"
  network_name             = "network"
  subnet_cidr              = "192.168.70.0/24"
}