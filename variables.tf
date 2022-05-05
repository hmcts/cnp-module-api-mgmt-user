variable "api_mgmt_rg" {
  description = "Resource group that apim is in, e.g. core-infra-demo"
}

variable "api_mgmt_name" {
  description = "Name of the apim service, e.g. core-infra-demo"
}

variable "unique_name" {
  type        = string
  description = "User resource identifying name - unique within the APIM instance"
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