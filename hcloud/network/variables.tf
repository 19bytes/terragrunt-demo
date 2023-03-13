variable "environment" {
  description = "The nick name identifying the type of environment (i.e. test, staging, production)"
}

variable "network_ip_range" {
  description = "The type of the placement group."
  default = "10.0.0.0/16"
}

variable "network_delete_protection" {
  description = "Whether delete protection is enabled."
  default = false
}


variable "network_name_prefix" {
  description = "The prefix used to name all resources created."
}

variable "network_name_suffix" {
  description = "The suffix used to name all resources created."
  default     = ""
}

locals {
  # Define resource names based on the following convention:
  # {azurerm_resource_name_prefix}-RESOURCE_TYPE-{environment}
  hcloud_network_name = "${var.network_name_prefix}-${var.environment}${var.network_name_suffix != "" ? "-${var.network_name_suffix}-" : "-"}network"
}