resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags     = merge(local.common_tags)
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  access_tier              = var.access_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = "TLS1_2"
  tags                     = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}

resource "azurerm_storage_account_network_rules" "storage_account_network_rules" {
  storage_account_id = azurerm_storage_account.storage_account.id

  default_action = "Deny"
  ip_rules       = var.allowed_sa_ips
  bypass         = ["Metrics", "AzureServices"]
  depends_on = [
    azurerm_storage_account.storage_account
  ]
}

resource "azurerm_storage_share" "storage_account_share" {
  name                 = var.fs_name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = var.fs_quota
  access_tier          = var.fs_access_tier
}