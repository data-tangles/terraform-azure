output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "Outputs the vNet ID"
}

output "vm_snet_id" {
  value       = azurerm_subnet.vm_subnet.id
  description = "Outputs the VM subnet ID"
}

output "aci_snet_id" {
  value       = azurerm_subnet.aci_subnet.id
  description = "Outputs the ACI subnet ID"
}