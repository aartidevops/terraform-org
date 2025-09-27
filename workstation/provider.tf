provider "azurerm" {
  features {}
  subscription_id = "0aa6e6f6-6e44-47f7-b30d-2aa0dfd4e5f4"
}

terraform {
  backend "azurerm" {
    resource_group_name   = "RG"
    storage_account_name  = "rttfstate"
    container_name        = "tfstatecontainer"
    key                   = "terraform.tfstate"
  }
}