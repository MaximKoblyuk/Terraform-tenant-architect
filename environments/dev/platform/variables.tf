variable "subscription_id" {
  type        = string
  description = "Azure subscription ID for the platform environment"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "westeurope"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"
}

variable "owner" {
  type    = string
  default = "platform-team"
}

variable "cost_center" {
  type    = string
  default = "IT001"
}

variable "application" {
  type    = string
  default = "landing-zone"
}

variable "criticality" {
  type    = string
  default = "high"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.10.0.0/16"]
}
