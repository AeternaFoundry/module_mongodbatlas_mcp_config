variable "mcp_configs" {
  description = <<EOT
Map of mcp_configs, attributes below
Required:
    - mcp_config_name
    - org_id
    - roles
Optional:
    - ip_access_list
EOT

  type = map(object({
    mcp_config_name = string
    org_id          = string
    roles           = set(string)
    ip_access_list = optional(set(object({
      cidr_block = optional(string)
      ip_address = optional(string)
    })))
  }))
}

