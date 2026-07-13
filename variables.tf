variable "eventhub_namespace_disaster_recovery_configs" {
  description = <<EOT
Map of eventhub_namespace_disaster_recovery_configs, attributes below
Required:
    - name
    - namespace_name
    - partner_namespace_id
    - resource_group_name
EOT

  type = map(object({
    name                 = string
    namespace_name       = string
    partner_namespace_id = string
    resource_group_name  = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventhub_namespace_disaster_recovery_configs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_namespace_disaster_recovery_configs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_namespace_disaster_recovery_configs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

