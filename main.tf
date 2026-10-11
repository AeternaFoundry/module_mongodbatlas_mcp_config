resource "mongodbatlas_mcp_config" "mcp_configs" {
  for_each = var.mcp_configs

  mcp_config_name = each.value.mcp_config_name
  org_id          = each.value.org_id
  roles           = each.value.roles
  ip_access_list  = each.value.ip_access_list
}

