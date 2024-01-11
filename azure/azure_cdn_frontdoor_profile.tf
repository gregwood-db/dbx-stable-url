resource "azurerm_cdn_frontdoor_profile" "databricks_example_profile" {
  name                = "databricks-example-frontdoor-profile"
  resource_group_name = azurerm_resource_group.databricks_example_rg.name
  sku_name            = "Premium_AzureFrontDoor"
}
