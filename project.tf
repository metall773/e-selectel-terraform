# Create the main project with user.
# This module should be applied first:
# terraform apply -target=module.project_with_user
module "project_with_user" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/project_with_user"

  project_name  = local.os_project_name
  user_name     = local.user_name
  user_password = var.user_password
  os_region     = var.os_region
  server_zone   = var.server_zone
  quotas        = var.quotas
}