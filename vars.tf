variable "sel_account" {}

variable "sel_token" {}

variable "environment" {
  default = "dev"
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
  default     = "192.168.70.0/24"
}

variable "compute_cores_quotas" {
  description = "CPU cores quota for the project"
  default     = "16"
}

variable "compute_ram_quotas" {
  description = "RAM memory quota in Mb for the project"
  default     = "24576"
}

variable "volume_gigabytes_basic_quotas" {
  description = "Basic Disk quota in Gb for the project"
  default     = "250"
}

variable "volume_gigabytes_fast_quotas" {
  description = "Disk quota in Gb for the project"
  default     = "200"
}

variable "volume_gigabytes_local_quotas" {
  description = "Local Disk quota in Gb for the project"
  default = "200"
}