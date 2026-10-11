variable "kibana_maintenance_windows" {
  description = <<EOT
Map of kibana_maintenance_windows, attributes below
Required:
    - custom_schedule
    - title
Optional:
    - enabled
    - scope
    - space_id
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    custom_schedule = object({
      duration = string
      recurring = object({
        end          = optional(string)
        every        = optional(string)
        occurrences  = optional(number)
        on_month     = optional(list(number))
        on_month_day = optional(list(number))
        on_week_day  = optional(list(string))
      })
      start    = string
      timezone = optional(string)
    })
    title   = string
    enabled = optional(bool)
    scope = optional(object({
      alerting = object({
        kql = string
      })
    }))
    space_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

