resource "azurerm_cdn_frontdoor_rule" "example" {
  name                      = "DatabricksExampleRule"
  cdn_frontdoor_rule_set_id = azurerm_cdn_frontdoor_rule_set.databricks_example_ruleset.id
  order                     = 1
  behavior_on_match         = "Continue"

  actions {
    url_rewrite_action {
      source_pattern        = "/warehouse"
      destination    = "/sql/1.0/warehouses/${var.primary_warehouse_id}"
      preserve_unmatched_path = false
    }
  }

  conditions {
    url_path_condition {
      operator         = "Contains"
      negate_condition = false
      match_values     = ["warehouse"]
    }
  }
}
