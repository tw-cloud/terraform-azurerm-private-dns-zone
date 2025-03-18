output "id" {
  description = "The ID of the private DNS zone."
  value       = azurerm_private_dns_zone.private_dns_zone.id
}

output "name" {
  description = "The name of the private DNS zone."
  value       = azurerm_private_dns_zone.private_dns_zone.name
}

output "resource_group_name" {
  description = "The name of the resource group in which the private DNS zone is created."
  value       = azurerm_private_dns_zone.private_dns_zone.resource_group_name
}

output "virtual_network_links" {
  description = "The virtual network links associated with the private DNS zone."
  value = {
    for link in module.vnet_link : link.name => {
      id                    = link.id
      name                  = link.name
      resource_group_name   = link.resource_group_name
      private_dns_zone_name = link.private_dns_zone_name
      virtual_network_id    = link.virtual_network_id
      registration_enabled  = link.registration_enabled
    }
  }
}

output "a_records" {
  description = "The A records associated with the private DNS zone."
  value = {
    for record in module.a_record : record.name => {
      id                  = record.id
      name                = record.name
      zone_name           = record.zone_name
      resource_group_name = record.resource_group_name
      ttl                 = record.ttl
      records             = record.records
    }
  }
}
