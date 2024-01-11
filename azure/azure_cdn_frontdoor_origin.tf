resource "azurerm_cdn_frontdoor_origin" "primary_workspace_origin" {
  name                          = "databricks-example-primary-origin"
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.databricks_example_origin_group.id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.primary_workspace_url
  http_port          = 80
  https_port         = 443
  origin_host_header = var.primary_workspace_url
  priority           = 1
  weight             = 1
}

resource "azurerm_cdn_frontdoor_origin" "secondary_workspace_origin" {
  name                          = "databricks-example-secondary-origin"
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.databricks_example_origin_group.id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.secondary_workspace_url
  http_port          = 80
  https_port         = 443
  origin_host_header = var.secondary_workspace_url
  priority           = 1
  weight             = 1
}
