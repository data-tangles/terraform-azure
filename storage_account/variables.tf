variable "tag_environment" {
    type = string
    description = "Tag Value for Environment"
}

variable "rg_name" {
    type = string
    description = "Name of the Resource Group"
}

variable "rg_location" {
    type = string
    description = "Location of the Resource Group"
}

variable "veeam_sa_name" {
    type = string
    description = "Name of the Veeam Storage Account"
}

variable "allowed_sa_ips" {
    type = list(string)
    description = "Allowed Public IP's"
}