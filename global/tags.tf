locals {
  default_tags = {
    Owner       = "platform-team"
    CostCenter  = "IT001"
    Application = "landing-zone"
    ManagedBy   = "terraform"
    Criticality = "high"
  }
}
