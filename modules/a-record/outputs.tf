output "id" {
  value = azurerm_private_dns_a_record.record.id
}

output "name" {
  value = azurerm_private_dns_a_record.record.name
}

output "zone_name" {
  value = azurerm_private_dns_a_record.record.zone_name
}

output "resource_group_name" {
  value = azurerm_private_dns_a_record.record.resource_group_name
}

output "ttl" {
  value = azurerm_private_dns_a_record.record.ttl
}

output "records" {
  value = var.records
}