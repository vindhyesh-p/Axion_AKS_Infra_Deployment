terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.61.0"

    }

  }
  backend "azurerm"{
        resource_group_name= "aks_rg"
        storage_account_name= "aksstg12345"
        container_name = "akscontainer"
        key = "aks.terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
  subscription_id = "e2ae98d7-8d18-48c7-9f27-a5aa26d3a904"
}