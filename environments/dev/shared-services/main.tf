terraform {
  required_version = "~> 1.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

module "shared_rg" {
  source   = "../../../modules/resource-group"
  name     = "rg-dev-we-shared-001"
  location = var.location
  tags = {
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

module "log_analytics" {
  source              = "../../../modules/log-analytics"
  name                = "log-dev-we-shared-001"
  location            = var.location
  resource_group_name = module.shared_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = {
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}
