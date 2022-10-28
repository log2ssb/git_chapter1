variable "rsource_group_name" {
    default = "dev_rg"
}

variable "vnet_name" {
    default = "internal_network"
    description = "main virtual network"  
}

variable "location_name" {
    default = "eastus"
    description = "Location name"
  
}

variable "ip_address_name" {
    default = "primary_ip"
    description = "azure traffic manager IP"
  
}
