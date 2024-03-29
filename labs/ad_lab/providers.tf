terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }
    random = {
      version = "3.6.0"
    }
  }
  backend "azurerm" {}
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}