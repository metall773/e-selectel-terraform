# Create the main project with user.
# This module should be applied first:
# terraform apply -target=module.project_with_user
module "project_with_user" {
  source = "git@gitlab.com:lee040404/e-selectel-terraform-modules.git//modules/vpc/project_with_user"

  project_name  = format("%s-%s-environment", var.project_name, var.environment)
  user_name     = var.user_name
  user_password = var.user_password
}

