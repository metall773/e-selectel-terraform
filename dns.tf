#https://registry.terraform.io/providers/selectel/selectel/latest/docs/resources/domains_record_v1
resource "selectel_domains_domain_v1" "domain" {
  name = local.dns_domain
}

#resource "selectel_domains_record_v1" "cname_record_1" {
#  domain_id = selectel_domains_domain_v1.domain.id
#  name      = "${module.bitrix[0].server_name}.${local.dns_domain}"
#  type      = "CNAME"
#  content   = module.lb01.server_FQDN
#  ttl       = 60
#}