terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"

    }
    
  }
  backend "azurerm" {
      resource_group_name  = "rg-terraform-state"
      storage_account_name = "stterraformstate"
      container_name       = "tfstate"
      key                  = "pipeline.terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
  subscription_id = "ff2c3052-bd08-443f-80dd-1cabe7cbcd50"
}