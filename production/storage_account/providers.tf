terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.101.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "#{AZURERM_RESOURCE_GROUP_NAME}#"
    storage_account_name  = "#{AZURERM_STORAGE_ACCOUNT_NAME}#"
    container_name        = "#{AZURERM_CONTAINER_NAME}#"
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