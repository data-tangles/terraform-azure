# azure_container_instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.63.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_group.aci](https://registry.terraform.io/providers/hashicorp/azurerm/3.63.0/docs/resources/container_group) | resource |
| [azurerm_resource_group.aci_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.63.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.aci_rbac](https://registry.terraform.io/providers/hashicorp/azurerm/3.63.0/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.aci_mi](https://registry.terraform.io/providers/hashicorp/azurerm/3.63.0/docs/resources/user_assigned_identity) | resource |
| [terraform_remote_state.acr](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.networking](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aci_name"></a> [aci\_name](#input\_aci\_name) | Name of the ACI | `string` | n/a | yes |
| <a name="input_acr_server_url"></a> [acr\_server\_url](#input\_acr\_server\_url) | Server URL for the ACR | `string` | n/a | yes |
| <a name="input_azp_pool"></a> [azp\_pool](#input\_azp\_pool) | Name of the Azure DevOps Agent Pool | `string` | n/a | yes |
| <a name="input_azp_token"></a> [azp\_token](#input\_azp\_token) | Azure DevOps PAT | `string` | n/a | yes |
| <a name="input_azp_url"></a> [azp\_url](#input\_azp\_url) | Azure DevOps URL | `string` | n/a | yes |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | Image of the Container | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of the Container | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
