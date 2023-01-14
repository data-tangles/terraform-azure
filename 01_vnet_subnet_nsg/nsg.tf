resource "azurerm_network_security_group" "vm_snet_nsg" {
  location            = azurerm_resource_group.rg.location
  name                = "${var.vm_snet_name}-nsg"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet_network_security_group_association" "vm_snet_nsg_asc" {
  subnet_id                 = azurerm_subnet.vm_subnet.id
  network_security_group_id = azurerm_network_security_group.vm_snet_nsg.id
  depends_on = [azurerm_subnet.vm_subnet]
}