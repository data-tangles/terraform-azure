terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rg-storage-tf-san-01"
    storage_account_name  = "sttfssan01"
    container_name        = "prod-tfstate"
    key                   = "prod.storage.terraform.tfstate"
    use_oidc              = true
  }
}

provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.0"
}