locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform (Personal)"
    modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}