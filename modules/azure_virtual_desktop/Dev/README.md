# Dev

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

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/resource_group) | resource |
| [azurerm_shared_image_gallery.avd_sig](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/shared_image_gallery) | resource |
| [azurerm_virtual_desktop_application_group.desktop_ag](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/virtual_desktop_application_group) | resource |
| [azurerm_virtual_desktop_host_pool.pooled_hp](https://registry.terraform.io/providers/hashicorp/azurerm/3.60.0/docs/resources/virtual_desktop_host_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_group_name"></a> [app\_group\_name](#input\_app\_group\_name) | Name of the Application Group | `string` | n/a | yes |
| <a name="input_avd_sig_name"></a> [avd\_sig\_name](#input\_avd\_sig\_name) | Name of the AVD Shared Image Gallery | `string` | n/a | yes |
| <a name="input_hp_name"></a> [hp\_name](#input\_hp\_name) | Name of the Host Pool | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
