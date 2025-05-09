variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "name" {
  description = "The name of the private DNS zone."
  type        = string
}

variable "a_records" {
  type = map(object({
    ttl     = optional(number, 3600)
    records = list(string)
    tags    = optional(map(string), {})
  }))
  default = {}
}

variable "vnet_links" {
  type = map(object({
    vnet_id              = string
    registration_enabled = optional(bool, false)
  }))
  default = {}
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}