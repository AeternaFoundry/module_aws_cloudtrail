output "cloudtrails_id" {
  description = "Map of id values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudtrails_advanced_event_selector" {
  description = "Map of advanced_event_selector values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.advanced_event_selector if v.advanced_event_selector != null && length(v.advanced_event_selector) > 0 }
}
output "cloudtrails_arn" {
  description = "Map of arn values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudtrails_cloud_watch_logs_group_arn" {
  description = "Map of cloud_watch_logs_group_arn values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.cloud_watch_logs_group_arn if v.cloud_watch_logs_group_arn != null && length(v.cloud_watch_logs_group_arn) > 0 }
}
output "cloudtrails_cloud_watch_logs_role_arn" {
  description = "Map of cloud_watch_logs_role_arn values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.cloud_watch_logs_role_arn if v.cloud_watch_logs_role_arn != null && length(v.cloud_watch_logs_role_arn) > 0 }
}
output "cloudtrails_enable_log_file_validation" {
  description = "Map of enable_log_file_validation values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.enable_log_file_validation if v.enable_log_file_validation != null }
}
output "cloudtrails_enable_logging" {
  description = "Map of enable_logging values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.enable_logging if v.enable_logging != null }
}
output "cloudtrails_event_selector" {
  description = "Map of event_selector values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.event_selector if v.event_selector != null && length(v.event_selector) > 0 }
}
output "cloudtrails_home_region" {
  description = "Map of home_region values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.home_region if v.home_region != null && length(v.home_region) > 0 }
}
output "cloudtrails_include_global_service_events" {
  description = "Map of include_global_service_events values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.include_global_service_events if v.include_global_service_events != null }
}
output "cloudtrails_insight_selector" {
  description = "Map of insight_selector values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.insight_selector if v.insight_selector != null && length(v.insight_selector) > 0 }
}
output "cloudtrails_is_multi_region_trail" {
  description = "Map of is_multi_region_trail values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.is_multi_region_trail if v.is_multi_region_trail != null }
}
output "cloudtrails_is_organization_trail" {
  description = "Map of is_organization_trail values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.is_organization_trail if v.is_organization_trail != null }
}
output "cloudtrails_kms_key_id" {
  description = "Map of kms_key_id values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "cloudtrails_name" {
  description = "Map of name values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudtrails_region" {
  description = "Map of region values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudtrails_s3_bucket_name" {
  description = "Map of s3_bucket_name values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.s3_bucket_name if v.s3_bucket_name != null && length(v.s3_bucket_name) > 0 }
}
output "cloudtrails_s3_key_prefix" {
  description = "Map of s3_key_prefix values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.s3_key_prefix if v.s3_key_prefix != null && length(v.s3_key_prefix) > 0 }
}
output "cloudtrails_sns_topic_arn" {
  description = "Map of sns_topic_arn values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.sns_topic_arn if v.sns_topic_arn != null && length(v.sns_topic_arn) > 0 }
}
output "cloudtrails_sns_topic_name" {
  description = "Map of sns_topic_name values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.sns_topic_name if v.sns_topic_name != null && length(v.sns_topic_name) > 0 }
}
output "cloudtrails_tags" {
  description = "Map of tags values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudtrails_tags_all" {
  description = "Map of tags_all values across all cloudtrails, keyed the same as var.cloudtrails"
  value       = { for k, v in aws_cloudtrail.cloudtrails : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

