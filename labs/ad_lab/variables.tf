# General Variables

variable "tag_environment" {
  type        = string
  description = "Tag Value for Environment"
}

# Resource Group Variables

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "rg_location" {
  type        = string
  description = "Location of the Resource Group"
}

# Network Variables

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the Virtual Network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the Subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address Prefix of the Subnet"
}

variable "home_pip" {
  type        = string
  description = "Home Public IP address"
}

# VM Variables

variable "vm_count" {
  type        = string
  description = "Number of Virtual Machines to create"
}

variable "vm_name_prefix" {
  type        = string
  description = "Name prefix of the Virtual Machine"
}

variable "vm_size" {
  type        = string
  description = "Size of the Virtual Machine"
}

variable "publisher" {
  type        = string
  description = "Publisher of the marketplace image"
}

variable "offer" {
  type        = string
  description = "Offer of the marketplace image"
}

variable "sku" {
  type        = string
  description = "SKU of the marketplace image"
}

variable "image_version" {
  type        = string
  description = "Image Version of the marketplace image"
  default     = "latest"
}