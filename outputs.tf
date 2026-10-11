output "mcp_configs_client_id" {
  description = "Map of client_id values across all mcp_configs, keyed the same as var.mcp_configs except keys with no client_id are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "mcp_configs_egress_client_id" {
  description = "Map of egress_client_id values across all mcp_configs, keyed the same as var.mcp_configs except keys with no egress_client_id are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.egress_client_id if v.egress_client_id != null && length(v.egress_client_id) > 0 }
}
output "mcp_configs_ip_access_list" {
  description = "Map of ip_access_list values across all mcp_configs, keyed the same as var.mcp_configs except keys with no ip_access_list are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.ip_access_list if v.ip_access_list != null && length(v.ip_access_list) > 0 }
}
output "mcp_configs_mcp_config_id" {
  description = "Map of mcp_config_id values across all mcp_configs, keyed the same as var.mcp_configs except keys with no mcp_config_id are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.mcp_config_id if v.mcp_config_id != null && length(v.mcp_config_id) > 0 }
}
output "mcp_configs_mcp_config_name" {
  description = "Map of mcp_config_name values across all mcp_configs, keyed the same as var.mcp_configs except keys with no mcp_config_name are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.mcp_config_name if v.mcp_config_name != null && length(v.mcp_config_name) > 0 }
}
output "mcp_configs_org_id" {
  description = "Map of org_id values across all mcp_configs, keyed the same as var.mcp_configs except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "mcp_configs_roles" {
  description = "Map of roles values across all mcp_configs, keyed the same as var.mcp_configs except keys with no roles are omitted"
  value       = { for k, v in mongodbatlas_mcp_config.mcp_configs : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

