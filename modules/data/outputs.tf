output "id" {
    value = data.azurerm_dns_zone.dns_zone.id
}

output "name" {
    value = data.azurerm_dns_zone.dns_zone.name
}

output "resource_group_name" {
    value = data.azurerm_dns_zone.dns_zone.resource_group_name
}