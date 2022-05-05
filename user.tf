resource "azurerm_api_management_user" "user" {
  api_management_name = var.api_mgmt_name
  resource_group_name = var.api_mgmt_rg
  email               = var.email
  first_name          = var.first_name
  last_name           = var.last_name
  user_id             = var.user_id
  note                = var.note
  state               = var.state
}