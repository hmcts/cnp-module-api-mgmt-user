# cnp-module-api-mgmt-user

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_api_management_user.user](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_mgmt_name"></a> [api\_mgmt\_name](#input\_api\_mgmt\_name) | Name of the apim service, e.g. core-infra-demo | `any` | n/a | yes |
| <a name="input_api_mgmt_rg"></a> [api\_mgmt\_rg](#input\_api\_mgmt\_rg) | Resource group that apim is in, e.g. core-infra-demo | `any` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | User email | `string` | n/a | yes |
| <a name="input_first_name"></a> [first\_name](#input\_first\_name) | User first name | `string` | n/a | yes |
| <a name="input_last_name"></a> [last\_name](#input\_last\_name) | User last name | `string` | n/a | yes |
| <a name="input_note"></a> [note](#input\_note) | Note on this user, eg. 'Test user for x' | `string` | `""` | no |
| <a name="input_state"></a> [state](#input\_state) | User state, e.g. active, pending or blocked | `string` | `"active"` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | Product User ID - unique within APIM service | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_id"></a> [user\_id](#output\_user\_id) | ID of the user |