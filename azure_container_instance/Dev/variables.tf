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

variable "aci_name" {
  type        = string
  description = "Name of the ACI"
}

variable "container_name" {
  type        = string
  description = "Name of the Container"
}

variable "container_image" {
  type        = string
  description = "Image of the Container"
}

variable "azp_url" {
  type        = string
  description = "Azure DevOps URL"
}

variable "azp_token" {
  type        = string
  description = "Azure DevOps PAT"
}

