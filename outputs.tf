output "eventhub_namespace_disaster_recovery_configs_name" {
  description = "Map of name values across all eventhub_namespace_disaster_recovery_configs, keyed the same as var.eventhub_namespace_disaster_recovery_configs"
  value       = { for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : k => v.name }
}
output "eventhub_namespace_disaster_recovery_configs_namespace_name" {
  description = "Map of namespace_name values across all eventhub_namespace_disaster_recovery_configs, keyed the same as var.eventhub_namespace_disaster_recovery_configs"
  value       = { for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : k => v.namespace_name }
}
output "eventhub_namespace_disaster_recovery_configs_partner_namespace_id" {
  description = "Map of partner_namespace_id values across all eventhub_namespace_disaster_recovery_configs, keyed the same as var.eventhub_namespace_disaster_recovery_configs"
  value       = { for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : k => v.partner_namespace_id }
}
output "eventhub_namespace_disaster_recovery_configs_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_namespace_disaster_recovery_configs, keyed the same as var.eventhub_namespace_disaster_recovery_configs"
  value       = { for k, v in azurerm_eventhub_namespace_disaster_recovery_config.eventhub_namespace_disaster_recovery_configs : k => v.resource_group_name }
}

