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

variable "snet_name" {
  type        = string
  description = "Name of the Subnet"
}

variable "snet_address_prefixes" {
  type        = list(string)
  description = "Address Prefix of the Subnet"
}

