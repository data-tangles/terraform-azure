# Prod

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
| [azurerm_network_security_group.vm_snet_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/network_security_group) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/resource_group) | resource |
| [azurerm_subnet.vm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.vm_snet_nsg_asc](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.62.1/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the Resource Group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the Resource Group | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag Value for Environment | `string` | n/a | yes |
| <a name="input_vm_snet_address_prefixes"></a> [vm\_snet\_address\_prefixes](#input\_vm\_snet\_address\_prefixes) | Address Prefix of the Subnet | `list(string)` | n/a | yes |
| <a name="input_vm_snet_name"></a> [vm\_snet\_name](#input\_vm\_snet\_name) | Name of the Subnet | `string` | n/a | yes |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | Address space of the Virtual Network | `list(string)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Name of the Virtual Network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_snet_id"></a> [vm\_snet\_id](#output\_vm\_snet\_id) | Outputs the subnet ID |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | Outputs the vNet ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
