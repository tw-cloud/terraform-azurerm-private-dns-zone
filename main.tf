resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = local.tags
}

module "a_record" {
  source              = "./modules/a-record"
  for_each            = var.a_records
  resource_group_name = var.resource_group_name
  zone_name           = azurerm_private_dns_zone.private_dns_zone.name
  name                = each.key
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = merge(local.tags, each.value.tags)
}

module "vnet_link" {
  source = "./modules/vnet-link"

  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.name
  resource_group_name   = var.resource_group_name

  for_each = var.vnet_links

  name                 = each.key
  vnet_id              = each.value.vnet_id
  registration_enabled = each.value.registration_enabled
}
