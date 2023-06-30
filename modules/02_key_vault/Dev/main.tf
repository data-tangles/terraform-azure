data "azurerm_client_config" "current" {}

data "terraform_remote_state" "networking" {
  backend = "azurerm"
  config = {
    key                  = "dev.networking.terraform.tfstate"
    container_name       = "dev-tfstate"
    resource_group_name  = "rg-storage-prod-san-01"
    storage_account_name = "stprodtfsan01"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location

  tags = merge(local.common_tags)

  lifecycle {
    ignore_changes = ["tags.createdon"]
  }
}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.kv_name
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true
  sku_name                    = "standard"
  tags                        = merge(local.common_tags)

  lifecycle {
    ignore_changes = ["tags.createdon"]
  }
  
  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Deny"
    virtual_network_subnet_ids = [data.terraform_remote_state.networking.outputs.vm_snet_id]
  }
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create", "Get", "List", "Purge", "Recover",
    ]

    secret_permissions = [
      "Get", "List", "Purge", "Recover", "Set",
    ]

    certificate_permissions = [
      "Get", "Create", "Get", "List", "Purge", "Recover", "Update",
    ]
  }
}