output "azuerm_subscription_resource_alias_id" {
  value     = azurerm_subscription.subscription.id
  sensitive = true
}

output "azuerm_subscription_tenant_id" {
  value     = azurerm_subscription.subscription.tenant_id
  sensitive = true
}
output "azuerm_subscription_detail" {
  value = azurerm_subscription.subscription
}

