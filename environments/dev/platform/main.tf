module "resource_group_platform" {
  source   = "../../../modules/resource-group"
  name     = local.names.rg_platform
  location = var.location
  tags     = var.tags
}

module "vnet_hub" {
  source              = "../../../modules/virtual-network"
  name                = local.names.vnet_hub
  location            = var.location
  resource_group_name = module.resource_group_platform.name
  address_space       = ["10.10.0.0/16"]
  tags                = var.tags
}
