# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "cc754ff7-4106-4cdf-b91b-2b1e9181219a"
  features {
  }
}

resource "azurerm_service_plan" "app_plan" {
  name                = "APP-Plan-Linux"
  resource_group_name = "RG_Devops"
  location            = "Brazil south"
  os_type             = "Linux"
  sku_name            = "F1"

  tags = {
    Ambiente = "Devops"
  }
}


