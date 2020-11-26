variable "sel_account" {}

variable "sel_token" {}

variable "environment" {
  default = "dev"
}

variable "project_name" {
  default = "e"
}

variable "user_name" {
  default = "tf_user"
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

variable "server_name" {
  default = "tf_server"
}

variable "server_zone" {
  default = "ru-7a"
}

variable "server_vcpus" {
  default = 2
}

variable "server_ram_mb" {
  default = 4096
}

variable "server_root_disk_gb" {
  default = 8
}

variable "server_image_name" {
  default = "CentOS 7 Minimal 64-bit"
}