terraform {
  required_version = ">= 1.5" # specify the required Terraform version
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0" # specify the required version of the AzureRM provider
    }
  }
}
provider "azurerm" {
  features {
    resource_group {
    prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}