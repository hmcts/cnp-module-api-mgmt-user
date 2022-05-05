resource "azurerm_api_management_user" "user" {
  user_id             = var.unique_name
  api_management_name = var.api_mgmt_name
  resource_group_name = var.api_mgmt_rg
  email               = var.email
  first_name          = var.first_name
  last_name           = var.last_name
  note                = var.note
  state               = var.state
}