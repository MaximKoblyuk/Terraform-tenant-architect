terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-dev"
    storage_account_name = "stterraformstatedev"
    container_name       = "tfstate"
    key                  = "platform/dev.terraform.tfstate"
  }
}
