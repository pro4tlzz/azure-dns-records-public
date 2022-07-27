resource "azurerm_dns_zone" "zone" {
  name                = var.zone_name 
  resource_group_name = var.resource_group_name
}

resource "azurerm_dns_a_record" "a" {
  for_each            = var.a_records
  name                = each.key
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = each.value
}