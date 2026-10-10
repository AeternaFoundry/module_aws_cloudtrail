variable "cloudtrails" {
  description = <<EOT
Map of cloudtrails, attributes below
Required:
    - name
    - s3_bucket_name
Optional:
    - cloud_watch_logs_group_arn
    - cloud_watch_logs_role_arn
    - enable_log_file_validation
    - enable_logging
    - include_global_service_events
    - is_multi_region_trail
    - is_organization_trail
    - kms_key_id
    - region
    - s3_key_prefix
    - sns_topic_name
    - tags
    - tags_all
    - advanced_event_selector (block):
        - field_selector (required, block):
            - ends_with (optional)
            - equals (optional)
            - field (required)
            - not_ends_with (optional)
            - not_equals (optional)
            - not_starts_with (optional)
            - starts_with (optional)
        - name (optional)
    - event_selector (block):
        - data_resource (optional, block):
            - type (required)
            - values (required)
        - exclude_management_event_sources (optional)
        - include_management_events (optional)
        - read_write_type (optional)
    - insight_selector (block):
        - insight_type (required)
EOT

  type = map(object({
    name                          = string
    s3_bucket_name                = string
    cloud_watch_logs_group_arn    = optional(string)
    cloud_watch_logs_role_arn     = optional(string)
    enable_log_file_validation    = optional(bool)
    enable_logging                = optional(bool)
    include_global_service_events = optional(bool)
    is_multi_region_trail         = optional(bool)
    is_organization_trail         = optional(bool)
    kms_key_id                    = optional(string)
    region                        = optional(string)
    s3_key_prefix                 = optional(string)
    sns_topic_name                = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    advanced_event_selector = optional(list(object({
      field_selector = list(object({
        ends_with       = optional(list(string))
        equals          = optional(list(string))
        field           = string
        not_ends_with   = optional(list(string))
        not_equals      = optional(list(string))
        not_starts_with = optional(list(string))
        starts_with     = optional(list(string))
      }))
      name = optional(string)
    })))
    event_selector = optional(list(object({
      data_resource = optional(list(object({
        type   = string
        values = list(string)
      })))
      exclude_management_event_sources = optional(set(string))
      include_management_events        = optional(bool)
      read_write_type                  = optional(string)
    })))
    insight_selector = optional(list(object({
      insight_type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (length(item.field_selector) >= 1)])
      )
    ])
    error_message = "Each field_selector list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.event_selector == null || (length(v.event_selector) <= 5)
      )
    ])
    error_message = "Each event_selector list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.ends_with == null || (alltrue([for x in item.ends_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.equals == null || (alltrue([for x in item.equals : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.not_ends_with == null || (alltrue([for x in item.not_ends_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.not_equals == null || (alltrue([for x in item.not_equals : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.not_starts_with == null || (alltrue([for x in item.not_starts_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrails : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (alltrue([for item in item.field_selector : (item.starts_with == null || (alltrue([for x in item.starts_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

