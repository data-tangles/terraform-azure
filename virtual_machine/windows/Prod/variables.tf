variable "kv_uri" {
  type        = string
  description = "URI for Key Vault"
}

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

variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine"
}

variable "vm_size" {
  type        = string
  description = "Size of the Virtual Machine"
}

variable "vm_user" {
  type        = string
  description = "Admin user of the Virtual Machine"
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
  description = "Version of the marketplace image"
  default     = "latest"
}
