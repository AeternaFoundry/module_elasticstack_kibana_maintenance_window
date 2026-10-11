output "kibana_maintenance_windows_id" {
  description = "Map of id values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_maintenance_windows_custom_schedule" {
  description = "Map of custom_schedule values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no custom_schedule are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.custom_schedule if v.custom_schedule != null && length(v.custom_schedule) > 0 }
}
output "kibana_maintenance_windows_enabled" {
  description = "Map of enabled values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.enabled if v.enabled != null }
}
output "kibana_maintenance_windows_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_maintenance_windows_scope" {
  description = "Map of scope values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no scope are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "kibana_maintenance_windows_space_id" {
  description = "Map of space_id values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_maintenance_windows_title" {
  description = "Map of title values across all kibana_maintenance_windows, keyed the same as var.kibana_maintenance_windows except keys with no title are omitted"
  value       = { for k, v in elasticstack_kibana_maintenance_window.kibana_maintenance_windows : k => v.title if v.title != null && length(v.title) > 0 }
}

