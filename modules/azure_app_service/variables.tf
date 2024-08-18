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

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "web_app_name" {
  type        = string
  description = "Name of the Web App"
}

variable "allowed_ip_address" {
  type        = string
  description = "Allowed Public IP in CIDR notation"
}

variable "docker_image_name" {
  type = string
  description = "The name of the Docker Image"
  default = "hello-world:latest"
}

variable "docker_registry_url" {
  type = string
  description = "The URL of the Docker Registry"
  default = "https://index.docker.io"
}

variable "docker_registry_username" {
  type = string
  description = "The username for the Docker Registry"
}

variable "docker_registry_password" {
  type = string
  description = "The password for the Docker Registry"
}
