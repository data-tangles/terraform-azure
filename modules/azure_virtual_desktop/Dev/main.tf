terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
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

locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}

resource "azurerm_virtual_desktop_host_pool" "pooled_hp" {
  name                = var.hp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  type               = "Pooled"
  load_balancer_type = "BreadthFirst"
  tags               = merge(local.common_tags)
}

resource "azurerm_virtual_desktop_application_group" "desktop_ag" {
  name                = var.app_group_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.pooled_hp.id
  friendly_name = var.app_group_name
  description   = var.app_group_name
  tags          = merge(local.common_tags)
}

resource "azurerm_shared_image_gallery" "avd_sig" {
  name                = var.avd_sig_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  description         = "Azure Virtual Desktop Images"
  tags                = merge(local.common_tags)
}

