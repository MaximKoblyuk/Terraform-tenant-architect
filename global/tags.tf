locals {
  default_tags = {
    Environment = "prod"
    Owner       = "platform-team"
    CostCenter  = "IT001"
    Application = "landing-zone"
    ManagedBy   = "terraform"
    Criticality = "high"
  }
}
