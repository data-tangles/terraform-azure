terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }
    random = {
      version = "3.6.3"
    }
  }
  backend "azurerm" {}
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}