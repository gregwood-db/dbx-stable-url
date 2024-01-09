variable "primary_workspace_url" {
 type = string
 default = "community.cloud.databricks.com"
 description = "URL of primary Databricks workspace, excluding leading https://"
}

variable "primary_warehouse_id" {
 type = string
 default = "1bdfaec3ab74501f"
 description = "ID of primary Databricks SQL Warehouse"
}

variable "secondary_workspace_url" {
 type = string
 default = "community.cloud.databricks.com"
 description = "URL of secondary Databricks workspace, excluding leading https://"
}

variable "region" {
 type = string
 default = "use"
 description = "Azure region for resource deployment"   
} 

variable "rg_name" {
 type = string
 default = "databricks_stableurl_example_rg"
 description = "Resource Group name for example infrastructure"
}

variable "tenant_id" {
 type = string
 sensitive = true
 description = "Azure Tenant ID"
} 

variable "subscription_id" {
 type = string
 sensitive = true
 description = "Azure Subscription ID"
} 