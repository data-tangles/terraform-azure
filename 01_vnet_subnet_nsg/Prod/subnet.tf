resource "azurerm_subnet" "vm_subnet" {
  name                 = var.vm_snet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vm_snet_address_prefixes
  depends_on           = [azurerm_virtual_network.vnet]
}