resource "azurerm_cdn_frontdoor_rule_set" "databricks_example_ruleset" {
  name                     = "DatabricksExampleRuleSet"
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.databricks_example_profile.id
}