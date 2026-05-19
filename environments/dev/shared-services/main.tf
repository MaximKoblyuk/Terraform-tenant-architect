module "resource_group_shared" {
  source   = "../../../modules/resource-group"
  name     = "rg-dev-we-shared-001"
  location = var.location
  tags     = var.tags
}

module "vnet_shared" {
  source              = "../../../modules/virtual-network"
  name                = "vnet-dev-we-shared-001"
  location            = var.location
  resource_group_name = module.resource_group_shared.name
  address_space       = ["10.20.0.0/16"]
  tags                = var.tags
}
