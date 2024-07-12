terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
    random = {
      version = "3.6.2"
    }
  }
  backend "azurerm" {}
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}