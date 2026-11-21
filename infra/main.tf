terraform {
   required_version = ">= 1.6"
   required_providers {
      azurerm = {
         source  = "hashicorp/azurerm"
         version = "~> 4.0"
      }
   }
}

provider "azurerm" {
   features {}
   # subscription comes from ARM_SUBSCRIPTION_ID env var, not hardcoded
}

resource "azurerm_resource_group" "demo" {
   name     = "rg-guardrails-demo"
   location = "eastus"
   tags = {
      env         = "dev"
      owner       = "anuj"
      cost-center = "portfolio"
   }
}