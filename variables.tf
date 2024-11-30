variable "org_name" {
  description = "the organization name to be used for naming convention"
  type        = string
  default     = null
}

variable "project_name" {
  description = "the project name to be used for naming convention"
  type        = string
  default     = null
}

variable "region_name" {
  description = "the region name to be used for naming convention"
  type        = string
  default     = null
}

variable "resource_desc" {
  description = "the resource desc to be used for naming convention"
  type        = string
  default     = null
}

variable "environment" {
  type        = string
  description = "namespace to segregate the resources from other environment and used in the naming convention"
  default     = null
}

variable "default_tags" {
  description = "Additional resource tags to be applied to all the resources created"
  type        = map(string)
  default     = {}
}

variable "billing_mode" {
  description = "Billing mode for the table (PROVISIONED or PAY_PER_REQUEST)"
  default     = "PAY_PER_REQUEST"
  type        = string
}

variable "hash_key" {
  description = "Name of the hash key for the table"
  type        = string
}

# variable "read_capacity" {
#   description = "Read capacity units for the table"
#   type        = number
#   default     = 5
# }

# variable "write_capacity" {
#   description = "Write capacity units for the table"
#   type        = number
#   default     = 5
# }
variable "ssm_parameter_store_kms_key_name" {
  description = "ssm parameter store kms_key name"
  type        = string
  default     = ""
}

variable "server_side_encryption_enabled" {
  description = "enable server side encryption"
  type        = bool
  default     = true
}
