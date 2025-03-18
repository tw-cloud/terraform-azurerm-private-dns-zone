output "id" {
  value = azurerm_private_dns_zone_virtual_network_link.private_dns_zone_vnet_associate.id
}

output "name" {
  value = azurerm_private_dns_zone_virtual_network_link.private_dns_zone_vnet_associate.name
}

output "resource_group_name" {
  value = azurerm_private_dns_zone_virtual_network_link.private_dns_zone_vnet_associate.resource_group_name
}

output "private_dns_zone_name" {
  value = var.private_dns_zone_name
}

output "virtual_network_id" {
  value = var.vnet_id
}

output "registration_enabled" {
  value = var.registration_enabled
}