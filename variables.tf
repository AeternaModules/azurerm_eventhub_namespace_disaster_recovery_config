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
  # --- Unconfirmed validation candidates, derived from azurerm_eventhub_namespace_disaster_recovery_config's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.ValidateEventHubAuthorizationRuleName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: namespace_name
  #   source:    validate.ValidateEventHubNamespaceName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: partner_namespace_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: partner_namespace_id
  #   source:    [from azure.ValidateResourceID] err != nil
}

