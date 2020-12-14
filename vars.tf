variable "sel_account" {}

variable "sel_token" {}

variable "environment" {
  default = "lee"
}

variable "project_name" {
  default = "e"
}

variable "user_password" {}

variable "keypair_name" {
  default = "tf_keypair"
}

variable "os_auth_url" {
  default = "https://api.selvpc.ru/identity/v3"
}

variable "os_region" {
  default = "ru-7"
}

variable "server_zone" {
  default = "ru-7a"
}

variable "localnet" {
  description = "Environment localnet"
  default     = "192.168.74.0/24"
}

variable "quotas" {
  type = map
  default = {
    quotas_for_avaliability_zone = {
      compute_cores          = 16
      compute_ram            = 32768
      volume_gigabytes_basic = 250
      volume_gigabytes_fast  = 250
      volume_gigabytes_local = 250
    }
    quotas_for_region = {
      network_floatingips           = 3
      license_windows_2012_standard = 2
      license_windows_2016_standard = 2
    }
  }
}