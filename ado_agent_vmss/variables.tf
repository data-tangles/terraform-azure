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

variable "ado_vmss_name" {
  type        = string
  description = "Name of the Virtual Machine Scale Set"
}

variable "vmss_size" {
  type        = string
  description = "Size of the Virtual Machine"
}

variable "instances" {
  type        = string
  description = "Number of instances"
  default     = "0"
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



