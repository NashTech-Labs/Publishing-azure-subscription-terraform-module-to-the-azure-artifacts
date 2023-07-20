variable "billing_account_name" {
  type        = string
  description = "the billing_account_name value"
  default     = ""
}


variable "subscription_name" {
  type        = string
  description = "Name of the subscription"
  default     = "IAC-Compute-Subscription"
}

variable "workload" {
  type        = string
  description = "the workload type"
  default     = "DevTest"
}

variable "enrollment_account_name" {
  type        = string
  description = "the enrollment_account_name value"
  default     = ""
}

variable "azure_client_id" {
  type        = string
  description = "app resigstration client_id"
  default     = ""
}

variable "azure_client_secret" {
  type        = string
  description = "app registration client_secret value"
  default     = ""

}

variable "azure_tenant_id" {
  type        = string
  description = "app registration tenant_id"
  default     = ""

}
variable "azure_subscription_id" {
  type        = string
  description = "subscription_id"
  default     = ""

}
variable "management_group_association" {
  type        = string
  description = "management group"
  default     = "/providers/Microsoft.Management/managementGroups/IAC-Compute"

}
