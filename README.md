[![terraform](https://img.shields.io/badge/Terraform-purple?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![azure](https://img.shields.io/badge/Azure-blue?style=for-the-badge&logo=microsoft-azure)](https://azure.microsoft.com/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)

[![HitCount](https://hits.dwyl.com/data-tangles/terraform-azure.svg?style=for-the-badge&show=unique)](http://hits.dwyl.com/data-tangles/terraform-azure)

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
I run my Terraform using Azure Pipelines. You may notice the `terraform.tfvars` file values contain `#{ }#` tokens. This is because I use the [Replace Tokens](https://marketplace.visualstudio.com/items?itemName=qetza.replacetokens) extension which allows you to inject variables from pipeline variables or variable groups within Azure DevOps