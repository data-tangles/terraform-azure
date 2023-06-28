variable "tag_environment" {
  type        = string
  description = "Tag Value for Environment"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "rg_location" {
  type        = string
  description = "Location of the Resource Group"
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the Virtual Network"
}

variable "vm_snet_name" {
  type        = string
  description = "Name of the VM Subnet"
}

variable "vm_snet_address_prefixes" {
  type        = list(string)
  description = "Address Prefix of VM the Subnet"
}

variable "aci_snet_name" {
  type        = string
  description = "Name of the ACI Subnet"
}

variable "aci_snet_address_prefixes" {
  type        = list(string)
  description = "Address Prefix of the ACI Subnet"
}

variable "avd_snet_name" {
  type        = string
  description = "Name of the AVD Subnet"
}

variable "avd_snet_address_prefixes" {
  type        = list(string)
  description = "Address Prefix of the AVD Subnet"
}

