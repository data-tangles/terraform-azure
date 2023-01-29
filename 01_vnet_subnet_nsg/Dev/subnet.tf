resource "azurerm_subnet" "vm_subnet" {
  name                 = var.vm_snet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vm_snet_address_prefixes
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault"]
}

resource "azurerm_subnet" "aci_subnet" {
  name                 = var.aci_snet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.aci_snet_address_prefixes
  depends_on           = [azurerm_virtual_network.vnet]
  service_endpoints    = ["Microsoft.KeyVault"]
  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}

