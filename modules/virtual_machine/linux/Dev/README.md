# linux

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.60.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.linux_vm](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.vm_nic](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/network_interface) | resource |
| [azurerm_resource_group.linux_vm_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/resource_group) | resource |
| [azurerm_key_vault_secret.vmpassword](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/data-sources/key_vault_secret) | data source |
| [terraform_remote_state.networking](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Version of the marketplace image | `string` | `"latest"` | no |
| <a name="input_kv_uri"></a> [kv\_uri](#input\_kv\_uri) | URI for Key Vault | `string` | n/a | yes |
| <a name="input_offer"></a> [offer](#input\_offer) | Offer of the marketplace image | `string` | n/a | yes |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | Publisher of the marketplace image | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | SKU of the marketplace image | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Name of the Virtual Machine | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Size of the Virtual Machine | `string` | n/a | yes |
| <a name="input_vm_user"></a> [vm\_user](#input\_vm\_user) | Admin user of the Virtual Machine | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
