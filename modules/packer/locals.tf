locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform (Personal)"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
    modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}