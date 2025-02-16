[![terraform](https://img.shields.io/badge/Terraform-purple?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![azure](https://img.shields.io/badge/Azure-blue?style=for-the-badge&logo=microsoft-azure)](https://azure.microsoft.com/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)

# Terraform Azure

This repo contains various Terraform modules for common services in Azure. 

## 📂 Repository structure

The Git repository contains the following directories:

```sh
📁 labs # these are lab environments composed of multiple modules
📁 modules # these are common Azure Terraform Modules
📁 production # these are modules specific to my own environment
```

## Getting Started


1. Clone this repo locally
2. Install Terraform for the appropriate operating sytem on which you will be running the tool. Instructions [here](https://developer.hashicorp.com/terraform/downloads)
3. Change the values in the `terraform.tfvars` file to your own values and run the `terraform init`, `plan` and `apply` CLI commands

## Extra Notes
I run my Terraform using GitHub Actions and commit my encrypted tfvars file into my git repository. I use SOPS for encrypting the variables. More information on how to use SOPS can be found at the following link: https://github.com/getsops/sops