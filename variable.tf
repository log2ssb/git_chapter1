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

variable "subnet_name" {
    default = "primary_subnet"
    description = "subnet name"
    
}
