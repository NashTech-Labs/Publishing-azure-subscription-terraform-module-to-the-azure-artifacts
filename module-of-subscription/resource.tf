terraform {
  
  required_version = ">= 0.13"
}

# This block goes outside of the required_providers block!
provider "azurerm" {
  features {}
  tenant_id = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
  client_id = var.azure_client_id
  client_secret = var.azure_client_secret

}
data "azurerm_billing_enrollment_account_scope" "billing_mca_account_scope" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

resource "azurerm_subscription" "subscription" {
  subscription_name = var.subscription_name
  workload          = var.workload
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.billing_mca_account_scope.id
}
data "azurerm_subscription" "subscription" {
  subscription_id = azurerm_subscription.subscription.subscription_id
}

resource "azurerm_management_group_subscription_association" "association" {
  management_group_id = var.management_group_association
  subscription_id     = data.azurerm_subscription.subscription.id
}
