variable "ip_configuration_subnet_id" {
  default = "/subscriptions/721ea30a-1562-42c5-89d7-30aeb9ce9522/resourceGroups/project-setup/providers/Microsoft.Network/virtualNetworks/roboshop-vnet/subnets/default"
}

variable "location" {
  default = "UK West"
}

variable "rg_name" {
  default = "project-setup"
}

variable "storage_image_reference_id" {
  default = "/subscriptions/721ea30a-1562-42c5-89d7-30aeb9ce9522/resourceGroups/project-setup/providers/Microsoft.Compute/images/test-vm-project-image-20260306200821"
}

variable "zone_name" {
  default = "vdevops.online"
}