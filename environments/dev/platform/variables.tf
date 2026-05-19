variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Owner       = "platform-team"
    CostCenter  = "IT001"
    Application = "landing-zone"
    ManagedBy   = "terraform"
    Criticality = "medium"
  }
}
