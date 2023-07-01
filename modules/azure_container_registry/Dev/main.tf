resource "azurerm_resource_group" "acr_rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.acr_rg.name
  location            = azurerm_resource_group.acr_rg.location
  sku                 = var.sku
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}