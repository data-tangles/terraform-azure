terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.82.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}