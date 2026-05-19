terraform {
  required_version = "~> 1.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.0"
    }
  }
}

module "platform_rg" {
  source   = "../../../modules/resource-group"
  name     = "rg-dev-we-platform-001"
  location = var.location
  tags     = local.tags
}

module "hub_vnet" {
  source              = "../../../modules/virtual-network"
  name                = "vnet-dev-we-hub-001"
  location            = var.location
  resource_group_name = module.platform_rg.name
  address_space       = var.vnet_address_space
  tags                = local.tags
}
