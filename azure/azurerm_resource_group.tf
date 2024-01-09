resource "azurerm_resource_group" "databricks_example_rg" {
  name     = "${var.rg_name}"
  location = "${var.region}"
}