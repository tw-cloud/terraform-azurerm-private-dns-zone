variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "name" {
  description = "The name of the private DNS zone."
  type        = string
}

variable "zone_name" {
  description = "The name of the private DNS zone to associate the record with."
  type        = string
}

variable "ttl" {
  description = "The Time To Live (TTL) of the record."
  type        = number
  default     = 3600
}

variable "records" {
  description = "A list of records to associate with the private DNS zone."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}