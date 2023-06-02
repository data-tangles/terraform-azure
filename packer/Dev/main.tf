terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.59.0"
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

resource "azurerm_resource_group" "packer_artifacts_rg" {
  name     = var.packer_artifacts_rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}

resource "azurerm_resource_group" "packer_build_rg" {
  name     = var.packer_build_rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}