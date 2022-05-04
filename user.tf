resource "azurerm_api_management_user" "user" {
  api_management_name = var.api_mgmt_name
  resource_group_name = var.api_mgmt_rg
  email               = var.user_email
  first_name          = var.user_first_name
  last_name           = var.user_last_name
  user_id             = var.user_id
  note                = var.user_note
  state               = var.user_state
}