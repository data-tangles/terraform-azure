locals {
  common_tags = {
    environment = var.tag_environment
    createdby   = "Terraform"
    createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", time_static.deployment.rfc3339)
    modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  }
}