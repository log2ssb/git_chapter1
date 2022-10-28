terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = ">=3.0"
    }
  }
}

provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg_tf1" {
    name = "local-${var.rsource_group_name}"
    location = var.location_name
    tags = {
      "environment" = "dev"
    }
}