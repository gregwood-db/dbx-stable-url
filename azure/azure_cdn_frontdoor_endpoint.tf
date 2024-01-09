resource "azurerm_cdn_frontdoor_endpoint" "databricks_example_endpoint" {
  name                     = "databricks-example-frontdoor-endpoint"
  cdn_frontdoor_profile_id = "${azurerm_cdn_frontdoor_profile.databricks_example_profile}"
}