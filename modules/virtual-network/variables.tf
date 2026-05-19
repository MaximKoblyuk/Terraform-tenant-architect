variable "name" {
  description = "Virtual network name."
  type        = string
}

variable "location" {
  description = "Azure region for the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name that contains the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address space prefixes for the virtual network."
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to the virtual network."
  type        = map(string)
}
