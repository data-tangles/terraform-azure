terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.63.0"
    }
    random = {
      version = "3.5.1"
    }
  }
  backend "azurerm" {}
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}