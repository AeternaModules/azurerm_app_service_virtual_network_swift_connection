output "app_service_virtual_network_swift_connections_app_service_id" {
  description = "Map of app_service_id values across all app_service_virtual_network_swift_connections, keyed the same as var.app_service_virtual_network_swift_connections"
  value       = { for k, v in azurerm_app_service_virtual_network_swift_connection.app_service_virtual_network_swift_connections : k => v.app_service_id }
}
output "app_service_virtual_network_swift_connections_subnet_id" {
  description = "Map of subnet_id values across all app_service_virtual_network_swift_connections, keyed the same as var.app_service_virtual_network_swift_connections"
  value       = { for k, v in azurerm_app_service_virtual_network_swift_connection.app_service_virtual_network_swift_connections : k => v.subnet_id }
}

