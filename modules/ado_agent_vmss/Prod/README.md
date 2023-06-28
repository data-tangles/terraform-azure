# ado_agent_vmss

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.62.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.62.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine_scale_set.ado_vmss](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/linux_virtual_machine_scale_set) | resource |
| [azurerm_resource_group.ado_vmss_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/resource_group) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |
| [terraform_remote_state.networking](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ado_vmss_name"></a> [ado\_vmss\_name](#input\_ado\_vmss\_name) | Name of the Virtual Machine Scale Set | `string` | n/a | yes |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Version of the marketplace image | `string` | `"latest"` | no |
| <a name="input_instances"></a> [instances](#input\_instances) | Number of instances | `string` | `"0"` | no |
| <a name="input_offer"></a> [offer](#input\_offer) | Offer of the marketplace image | `string` | n/a | yes |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | Publisher of the marketplace image | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | SKU of the marketplace image | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_vm_user"></a> [vm\_user](#input\_vm\_user) | Admin user of the Virtual Machine | `string` | n/a | yes |
| <a name="input_vmss_size"></a> [vmss\_size](#input\_vmss\_size) | Size of the Virtual Machine | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
