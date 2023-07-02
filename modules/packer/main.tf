resource "azurerm_resource_group" "packer_artifacts_rg" {
  name     = var.packer_artifacts_rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

resource "azurerm_resource_group" "packer_build_rg" {
  name     = var.packer_build_rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}