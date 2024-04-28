resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}

resource "azurerm_management_lock" "veeam_rg_lock" {
  name       = "PreventDelete"
  scope      = azurerm_resource_group.rg.id
  lock_level = "CanNotDelete"
  notes      = "Prevent deletion of backup resources"
}

resource "azurerm_storage_account" "veeam_backup" {
  name                     = var.veeam_sa_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  access_tier              = var.access_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = "TLS1_2"
  tags                     = merge(local.common_tags)
}

resource "azurerm_storage_account_network_rules" "veeam_backup_sa_nr" {
  storage_account_id = azurerm_storage_account.veeam_backup.id

  default_action = "Deny"
  ip_rules       = var.allowed_sa_ips
  bypass         = ["Metrics", "AzureServices"]
  depends_on = [
    azurerm_storage_account.veeam_backup
  ]
}