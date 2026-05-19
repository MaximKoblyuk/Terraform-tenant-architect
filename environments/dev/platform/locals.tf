locals {
  tags = {
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
    Application = var.application
    ManagedBy   = "terraform"
    Criticality = var.criticality
  }
}
