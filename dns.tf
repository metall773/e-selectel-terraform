resource "selectel_domains_domain_v1" "domain_1" {
  name = "selectel.xj7.ru"
}

resource "selectel_domains_record_v1" "a_record_1" {
  domain_id = selectel_domains_domain_v1.domain_1.id
  name = "a.selectel.xj7.ruz"
  type = "A"
  content = "127.0.0.1"
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