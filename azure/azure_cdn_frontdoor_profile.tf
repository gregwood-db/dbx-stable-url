resource "azurerm_cdn_frontdoor_profile" "databricks_example_profile" {
  name                = "databricks-example-frontdoor-profile"
  resource_group_name = var.rg_name
  sku_name            = "Premium_AzureFrontDoor"
}