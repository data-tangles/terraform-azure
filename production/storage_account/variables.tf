# Provider
variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account"
}

variable "container_name" {
  type        = string
  description = "Name of the Storage Container"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure Client ID"
}

# Resources 

variable "tag_environment" {
  type        = string
  description = "Tag Value for Environment"
}

variable "tag_purpose" {
  type        = string
  description = "Tag Value for Purpose"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "rg_location" {
  type        = string
  description = "Location of the Resource Group"
}

variable "veeam_sa_name" {
  type        = string
  description = "Name of the Veeam Storage Account"
}

variable "account_kind" {
  type        = string
  description = "Storage Account kind"
}

variable "account_tier" {
  type        = string
  description = "Storage Account tier"
}

variable "access_tier" {
  type        = string
  description = "Storage Account access tier"
}

variable "account_replication_type" {
  type        = string
  description = "Storage Account replication type"
}

variable "allowed_sa_ips" {
  type        = list(string)
  description = "Allowed Public IP's"
}
