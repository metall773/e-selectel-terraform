variable "sel_account" {}

variable "sel_token" {}

variable "environment" {
  default = "prod"
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
  default     = "192.168.75.0/24"
}

variable "quotas" {
  type = map
  default = {
    compute_cores          = 32
    compute_ram            = 32768
    volume_gigabytes_basic = 250
    volume_gigabytes_fast  = 250
    volume_gigabytes_local = 250
    network_floatingips    = 2
  }
}