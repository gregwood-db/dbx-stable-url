variable "workspace_url" {
 type = string
 default = "community.cloud.databricks.com"
 description = "URL of Databricks workspace, excluding leading https://"
}

variable "region" {
 type = string
 default = "us-east-2"
 description = "AWS region for resource deployment"   
} 