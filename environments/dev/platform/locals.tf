locals {
  env        = "dev"
  region_key = "we"

  names = {
    rg_platform = format("rg-%s-%s-platform-001", local.env, local.region_key)
    vnet_hub    = format("vnet-%s-%s-hub-001", local.env, local.region_key)
  }
}
