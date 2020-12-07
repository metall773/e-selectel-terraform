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

variable "quotas_zone" {
  type = map
  default = {
    compute_cores          = 32
    compute_ram            = 32768
    volume_gigabytes_basic = 250
    volume_gigabytes_fast  = 250
    volume_gigabytes_local = 250
  }
}

variable "quotas_region" {
  type = map
  default = {
    network_floatingips = 2
  }
}

#   quotas:Object
#   compute_cores:Array[10]
#   compute_ram:Array[10]
#   volume_gigabytes_basic:Array[10]
#   volume_gigabytes_fast:Array[10]
#   image_gigabytes:Array[6]
#   license_windows_2012_standard:Array[6]
#   network_floatingips:Array[6]
#   network_subnets_29:Array[6]
#   volume_gigabytes_universal:Array[10]
#   network_subnets_25:Array[6]
#   network_subnets_28:Array[6]
#   network_subnets_27:Array[6]
#   network_subnets_26:Array[6]
#   network_subnets_24:Array[6]
#   license_windows_2016_standard:Array[6]
#   load_balancers:Array[6]
#   network_subnets_bare_metal:Array[5]
#   volume_gigabytes_local:Array[10]
#   compute_pci_gpu_gtx1080:Array[6]
#   license_windows_2019_standard:Array[6]
#   mks_cluster_regional:Array[6]
#   dbaas_compute_cores:Array[6]
#   dbaas_compute_ram:Array[6]
#   dbaas_volume_gigabytes_local:Array[6]
#   mks_cluster_zonal:Array[6]
#   faas_execution_time:Array[1]
#   faas_executions_count:Array[1]
#   compute_pci_gpu_t4:Array[1]
#   network_subnets_29_vrrp:Array[1]
#   projects:Array[1]
#   network_subnets_cross_region:Array[1]
