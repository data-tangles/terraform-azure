# storage_account

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
| [azurerm_management_lock.veeam_rg_lock](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/management_lock) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/resource_group) | resource |
| [azurerm_storage_account.veeam_backup](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/storage_account) | resource |
| [azurerm_storage_account_network_rules.veeam_backup_sa_nr](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/storage_account_network_rules) | resource |
| [azurerm_storage_share.veeam_backup_fs](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/storage_share) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | Storage Account access tier | `string` | n/a | yes |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Storage Account kind | `string` | n/a | yes |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Storage Account replication type | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Storage Account tier | `string` | n/a | yes |
| <a name="input_allowed_sa_ips"></a> [allowed\_sa\_ips](#input\_allowed\_sa\_ips) | Allowed Public IP's | `list(string)` | n/a | yes |
| <a name="input_fs_access_tier"></a> [fs\_access\_tier](#input\_fs\_access\_tier) | File Share access tier | `string` | n/a | yes |
| <a name="input_fs_name"></a> [fs\_name](#input\_fs\_name) | File Share name | `string` | n/a | yes |
| <a name="input_fs_quota"></a> [fs\_quota](#input\_fs\_quota) | Quota for File Share | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_veeam_sa_name"></a> [veeam\_sa\_name](#input\_veeam\_sa\_name) | Name of the Veeam Storage Account | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
