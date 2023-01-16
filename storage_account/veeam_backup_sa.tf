terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.34.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

locals {
  common_tags = {
    environment  = var.tag_environment
    createdby    = "Terraform"  
    createdon    = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags = "${merge( local.common_tags)}"
}

resource "azurerm_storage_account" "veeam_backup" {
  name                     = var.veeam_sa_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  access_tier              = var.access_tier
  account_replication_type = var.account_replication_type
  tags = "${merge( local.common_tags)}"
}

resource "azurerm_storage_account_network_rules" "veeam_backup_sa_nr" {
  storage_account_id = azurerm_storage_account.veeam_backup.id

  default_action             = "Allow"
  ip_rules                   = var.allowed_sa_ips
  bypass                     = ["Metrics"]
}