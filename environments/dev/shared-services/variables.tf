variable "subscription_id" { type = string }
variable "tenant_id" { type = string }
variable "location" {
  type    = string
  default = "westeurope"
}
variable "environment" {
  type    = string
  default = "dev"
}
