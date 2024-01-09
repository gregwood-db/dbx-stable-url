resource "azurerm_cdn_frontdoor_origin_group" "databricks_example_origin_group" {
  name                     = "databricks-example-origin-group"
  cdn_frontdoor_profile_id = "${azurerm_cdn_frontdoor_profile.databricks_example_profile.id}"
  session_affinity_enabled = false

  restore_traffic_time_to_healed_or_new_endpoint_in_minutes = 10

  health_probe {
    interval_in_seconds = 240
    path                = "/healthProbe"
    protocol            = "Https"
    request_type        = "HEAD"
  }

  load_balancing {
    additional_latency_in_milliseconds = 0
    sample_size                        = 16
    successful_samples_required        = 3
  }
}