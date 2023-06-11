terraform {
  required_version = ">= 1.0"
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

data "terraform_remote_state" "networking" {
  backend = "azurerm"
  config = {
    key                  = "dev.networking.terraform.tfstate"
    container_name       = "dev-tfstate"
    resource_group_name  = "rg-storage-prod-san-01"
    storage_account_name = "stprodtfsan01"
  }
}

data "terraform_remote_state" "acr" {
  backend = "azurerm"
  config = {
    key                  = "dev.acr.terraform.tfstate"
    container_name       = "dev-tfstate"
    resource_group_name  = "rg-storage-prod-san-01"
    storage_account_name = "stprodtfsan01"
  }
}

locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}

resource "azurerm_resource_group" "aci_rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}

resource "azurerm_user_assigned_identity" "aci_mi" {
  name                = "${var.aci_name}-mi"
  location            = azurerm_resource_group.aci_rg.location
  resource_group_name = azurerm_resource_group.aci_rg.name
}

resource "azurerm_role_assignment" "aci_rbac" {
  scope                = data.terraform_remote_state.acr.outputs.acr_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_user_assigned_identity.aci_mi.principal_id
  depends_on           = [azurerm_user_assigned_identity.aci_mi]
}

resource "azurerm_container_group" "aci" {
  name                = var.aci_name
  location            = azurerm_resource_group.aci_rg.location
  resource_group_name = azurerm_resource_group.aci_rg.name
  ip_address_type     = "Private"
  subnet_ids          = [data.terraform_remote_state.networking.outputs.aci_snet_id]
  os_type             = "Linux"
  depends_on          = [azurerm_role_assignment.aci_rbac]

  image_registry_credential {
    user_assigned_identity_id = azurerm_user_assigned_identity.aci_mi.id
    server                    = var.acr_server_url
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.aci_mi.id]
  }

  container {
    name         = var.container_name
    image        = var.container_image
    cpu          = "1.0"
    memory       = "1.0"
    cpu_limit    = "1.0"
    memory_limit = "1.0"
    ports {
      port     = 9998
      protocol = "UDP"
    }
    environment_variables = {
      "AZP_URL"        = var.azp_url
      "AZP_TOKEN"      = var.azp_token
      "AZP_AGENT_NAME" = var.container_name
      "AZP_POOL"       = "dev-ado-agents"
    }
  }
}