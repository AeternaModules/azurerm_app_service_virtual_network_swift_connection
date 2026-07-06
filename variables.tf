variable "app_service_virtual_network_swift_connections" {
  description = <<EOT
Map of app_service_virtual_network_swift_connections, attributes below
Required:
    - app_service_id
    - subnet_id
EOT

  type = map(object({
    app_service_id = string
    subnet_id      = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_virtual_network_swift_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: app_service_id
  #   source:    [from validate.AppServiceID] !ok
  # path: app_service_id
  #   source:    [from validate.AppServiceID] err != nil
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
}

