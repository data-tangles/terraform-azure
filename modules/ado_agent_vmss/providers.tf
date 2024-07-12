terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "random" {
}