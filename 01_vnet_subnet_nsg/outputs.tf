output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vm_snet_id" {
  value  = azurerm_subnet.vm_subnet.id
}