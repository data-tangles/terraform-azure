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

variable "hp_name" {
  type        = string
  description = "Name of the Host Pool"
}

variable "app_group_name" {
  type        = string
  description = "Name of the Application Group"
}

variable "avd_sig_name" {
  type        = string
  description = "Name of the AVD Shared Image Gallery"
}
