terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prod"
    storage_account_name = "stterraformstateprod"
    container_name       = "tfstate"
    key                  = "shared-services/dev.terraform.tfstate"
  }
}
