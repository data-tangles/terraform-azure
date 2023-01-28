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

variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
}

variable "sku" {
  type        = string
  description = "SKU of the Azure Container Registry"
  default     = "Basic"
}

variable "ip_range" {
  type        = string
  description = "IP Range allowed to access the Azure Container Registry"
}



