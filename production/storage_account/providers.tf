terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = var.storage_account_name
    container_name        = var.container_name
    tenant_id             = var.tenant_id
    subscription_id       = var.subscription_id
    client_id             = var.client_id
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