terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.0"
}

data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_assignment" "deny_vm_pip" {
  name                 = "disallow_public_ip_on_vm_nic"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/83a86a26-fd1f-447c-b59d-e51f44264114"
  subscription_id      = data.azurerm_subscription.current.id
}