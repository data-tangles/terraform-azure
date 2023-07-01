

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

  lifecycle {
    ignore_changes = [tags.createdon]
  }
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

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}

resource "azurerm_shared_image_gallery" "avd_sig" {
  name                = var.avd_sig_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  description         = "Azure Virtual Desktop Images"
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}

