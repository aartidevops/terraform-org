provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name   = "RG"
    storage_account_name  = "rttfstate"
    container_name        = "tfstatecontainer"
    key                   = "terraform.tfstate"
  }
}