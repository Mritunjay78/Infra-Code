terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"

    }
    
  }
  backend "azurerm" {
      resource_group_name  = "rg-terraform-state"
      storage_account_name = "sttstate"
      container_name       = "tfstate"
      key                  = "pipeline.terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}