terraform {
  backend "s3" {
    bucket                      = "tfstate"
    key                         = "dev/dev_terraform.tfstate"
    region                      = "ru-1a"
    endpoint                    = "https://s3.selcdn.ru"
    access_key                  = "137805"
    secret_key                  = "+FPQm$/{1I"
    skip_region_validation      = true
    skip_credentials_validation = true
    force_path_style            = true
  }
}

# Initialize Selectel provider with token.
provider "selectel" {
  token = var.sel_token
}