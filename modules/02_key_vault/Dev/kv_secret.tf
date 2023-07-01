resource "random_password" "vmpassword" {
  length  = 20
  special = true
}

resource "azurerm_key_vault_secret" "vmpassword" {
  name            = "vmpassword"
  value           = random_password.vmpassword.result
  key_vault_id    = azurerm_key_vault.key_vault.id
  content_type    = "password"
  expiration_date = timeadd(timestamp(), "2160h")
  depends_on      = [azurerm_key_vault.key_vault]
  tags            = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags.createdon]
  }
}