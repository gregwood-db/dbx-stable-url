terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
 tenant_id = var.tenant
 subscription_id = var.subscription_id
 features {}
}