output "eventhub_namespace_disaster_recovery_configs" {
  description = "All eventhub_namespace_disaster_recovery_config resources"
  value       = azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs
}
output "eventhub_namespace_disaster_recovery_configs_name" {
  description = "List of name values across all eventhub_namespace_disaster_recovery_configs"
  value       = [for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : v.name]
}
output "eventhub_namespace_disaster_recovery_configs_namespace_name" {
  description = "List of namespace_name values across all eventhub_namespace_disaster_recovery_configs"
  value       = [for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : v.namespace_name]
}
output "eventhub_namespace_disaster_recovery_configs_partner_namespace_id" {
  description = "List of partner_namespace_id values across all eventhub_namespace_disaster_recovery_configs"
  value       = [for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : v.partner_namespace_id]
}
output "eventhub_namespace_disaster_recovery_configs_resource_group_name" {
  description = "List of resource_group_name values across all eventhub_namespace_disaster_recovery_configs"
  value       = [for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : v.resource_group_name]
}

