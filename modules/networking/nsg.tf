resource "azurerm_network_security_group" "snet_nsg" {
  location            = azurerm_resource_group.rg.location
  name                = "${var.snet_name}-nsg"
  resource_group_name = azurerm_resource_group.rg.name
  tags                = merge(local.common_tags)

  lifecycle {
    ignore_changes = [tags["createdon"]]
  }
}

resource "azurerm_subnet_network_security_group_association" "snet_nsg_asc" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.snet_nsg.id
  depends_on                = [azurerm_subnet.subnet]
}
