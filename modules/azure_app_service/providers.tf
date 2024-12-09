terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "#{AZURERM_RESOURCE_GROUP_NAME}#"
    storage_account_name  = "#{AZURERM_STORAGE_ACCOUNT_NAME}#"
    container_name        = "dev-tfstate"
    tenant_id             = "#{AZURE_TENANT_ID}#"
    subscription_id       = "#{AZURE_SUBSCRIPTION_ID}#"
    client_id             = "#{AZURE_CLIENT_ID}#"
    key                   = "dev.appservice.terraform.tfstate"
    use_oidc              = true
  }
}

provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.0"
}