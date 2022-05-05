variable "api_mgmt_rg" {
  description = "Resource group that apim is in, e.g. core-infra-demo"
}

variable "api_mgmt_name" {
  description = "Name of the apim service, e.g. core-infra-demo"
}

variable "email" {
  type        = string
  description = "User email"
}

variable "first_name" {
  type        = string
  description = "User first name"
}

variable "last_name" {
  type        = string
  description = "User last name"
}

variable "user_id" {
  type        = string
  description = "Product User ID - unique within APIM service"
}

variable "note" {
  type        = string
  description = "Note on this user, eg. 'Test user for x'"
  default     = ""
}

variable "state" {
  type        = string
  description = "User state, e.g. active, pending or blocked"
  default     = "active"
  validation {
    condition = anytrue([
      var.state == "active",
      var.state == "blocked",
      var.state == "pending"
    ])
    error_message = "Must be a valid user state."
  }
}