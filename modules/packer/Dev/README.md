# Dev

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.62.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.62.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.packer_artifacts_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/resource_group) | resource |
| [azurerm_resource_group.packer_build_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_packer_artifacts_rg_name"></a> [packer\_artifacts\_rg\_name](#input\_packer\_artifacts\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_packer_build_rg_name"></a> [packer\_build\_rg\_name](#input\_packer\_build\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
