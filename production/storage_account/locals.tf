locals {
  common_tags = {
    environment = var.tag_environment
    purpose     = var.tag_purpose
    createdby   = "Terraform (Personal)"
  }
}