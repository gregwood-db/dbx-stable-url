# dbx-stable-url
A small Terraform Repository to create Stable URL infrastructure for Databricks workspaces in AWS and Azure. See blog [here](https://medium.com/databricks-platform-sme/the-balanced-lakehouse-load-balancing-databricks-workspaces-using-cloud-cdns-12cb141cffe5).

# Required Tools:
- [Terraform](https://www.terraform.io/)
- Access to AWS or Azure environment where Databricks workspaces are deployed
- AWS or Azure CLI

# Instructions
From the AWS or Azure example folder, update the `variables.tf` file and then run terraform. This will create the CDN infrastructure required to maintain a stable URL across two separate workspaces.

*Note: this repo is provided as-is and as an example only. You will likely need to update the provided infrastructure to add appropriate security settings, company-mandated tags, etc.*
