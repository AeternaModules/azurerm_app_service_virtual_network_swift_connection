output "app_service_virtual_network_swift_connections" {
  description = "All app_service_virtual_network_swift_connection resources"
  value       = azurerm_app_service_virtual_network_swift_connection.app_service_virtual_network_swift_connections
}
output "app_service_virtual_network_swift_connections_app_service_id" {
  description = "List of app_service_id values across all app_service_virtual_network_swift_connections"
  value       = [for k, v in azurerm_app_service_virtual_network_swift_connection.app_service_virtual_network_swift_connections : v.app_service_id]
}
output "app_service_virtual_network_swift_connections_subnet_id" {
  description = "List of subnet_id values across all app_service_virtual_network_swift_connections"
  value       = [for k, v in azurerm_app_service_virtual_network_swift_connection.app_service_virtual_network_swift_connections : v.subnet_id]
}

