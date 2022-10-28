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


resource "azurerm_virtual_network" "vnet_tf1" {
    name = var.vnet_name
    location = var.location_name
    address_space = [ "10.0.0.1/16" ]
    resource_group_name = var.rsource_group_name
}


resource "azurerm_virtualmachine" "rg_tf1" {
    name = "local-${var.rsource_group_name}"
    location = var.location_name
    tags = {
      "environment" = "dev"
    }
}
