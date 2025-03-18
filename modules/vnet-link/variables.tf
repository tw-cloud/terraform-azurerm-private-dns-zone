variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "name" {
  description = "The name of the link to the virtual network."
  type        = string
}

variable "private_dns_zone_name" {
  description = "The name of the private DNS zone."
  type        = string
}

variable "vnet_id" {
  description = "The ID of the virtual network to link to the private DNS zone."
  type        = string
}

variable "registration_enabled" {
  description = "Is registration enabled on the virtual network link."
  type        = bool
  default     = false
}