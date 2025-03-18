## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.23 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.23.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_a_record"></a> [a\_record](#module\_a\_record) | ./modules/a-record | n/a |
| <a name="module_vnet_link"></a> [vnet\_link](#module\_vnet\_link) | ./modules/vnet-link | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.private_dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | n/a | <pre>map(object({<br/>    ttl     = optional(number, 3600)<br/>    records = list(string)<br/>    tags    = optional(map(string), {})<br/>  }))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the private DNS zone. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the resources will be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| <a name="input_vnet_links"></a> [vnet\_links](#input\_vnet\_links) | n/a | <pre>map(object({<br/>    vnet_id              = string<br/>    registration_enabled = optional(bool, false)<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a_records"></a> [a\_records](#output\_a\_records) | The A records associated with the private DNS zone. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the private DNS zone. |
| <a name="output_name"></a> [name](#output\_name) | The name of the private DNS zone. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group in which the private DNS zone is created. |
| <a name="output_virtual_network_links"></a> [virtual\_network\_links](#output\_virtual\_network\_links) | The virtual network links associated with the private DNS zone. |
