terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
    random = {
      version = "3.7.1"
    }
  }
  backend "azurerm" {}
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}