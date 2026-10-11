resource "elasticstack_kibana_maintenance_window" "kibana_maintenance_windows" {
  for_each = var.kibana_maintenance_windows

  custom_schedule = each.value.custom_schedule
  title           = each.value.title
  enabled         = each.value.enabled
  scope           = each.value.scope
  space_id        = each.value.space_id
  timeouts        = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

