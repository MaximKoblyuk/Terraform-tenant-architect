locals {
  naming_pattern = "resource-env-region-workload-sequence"

  naming_examples = {
    resource_group  = "rg-prod-we-app-001"
    vnet            = "vnet-prod-we-hub-001"
    key_vault       = "kv-prod-we-sec-001"
    aks             = "aks-prod-we-platform-001"
  }
}
