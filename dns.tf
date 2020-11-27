#https://registry.terraform.io/providers/selectel/selectel/latest/docs/resources/domains_record_v1
resource "selectel_domains_domain_v1" "domain_1" {
  name = "selectel.xj7.ru"
}

resource "selectel_domains_domain_v1" "domain_dev" {
  name = "${var.environment}.selectel.e-tiketka.com"
}

resource "selectel_domains_record_v1" "a_record_bitrix01" {
  domain_id = selectel_domains_domain_v1.domain_1.id
  name = "bitrix01.selectel.xj7.ru"
  type = "A"
  content = module.bitrix01.floating_ip
  ttl = 60
}

resource "selectel_domains_record_v1" "a_record_lb01" {
  domain_id = selectel_domains_domain_v1.domain_1.id
  name = "lb01.selectel.xj7.ru"
  type = "A"
  content = module.lb01.floating_ip
  ttl = 60
}

resource "selectel_domains_record_v1" "txt_record_1" {
  domain_id = selectel_domains_domain_v1.domain_1.id
  name = "txt.selectel.xj7.ru"
  type = "TXT"
  content = "hello, world!"
  ttl = 60
}

resource "selectel_domains_record_v1" "cname_record_1" {
  domain_id = selectel_domains_domain_v1.domain_1.id
  name = "cname.selectel.xj7.ru"
  type = "CNAME"
  content = "ya.ru"
  ttl = 60
}