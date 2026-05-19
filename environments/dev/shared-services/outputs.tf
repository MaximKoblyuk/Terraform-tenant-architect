output "shared_resource_group_name" {
  value = module.shared_rg.name
}

output "log_analytics_workspace_id" {
  value = module.log_analytics.id
}
