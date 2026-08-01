terraform {
  backend "azurerm" {
    resource_group_name  = "sdn_rg"
    storage_account_name = "sdnstorageaccount2507"
    container_name       = "sdnstoragecontainer"
    key                  = "module.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
}
provider "azurerm" {
  features {}
}