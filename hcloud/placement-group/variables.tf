variable "environment" {
  description = "The nick name identifying the type of environment (i.e. test, staging, production)"
}

variable "placement_group_type" {
  description = "The type of the placement group."
  default = "spread"
}

variable "placement_group_name_prefix" {
  description = "The prefix used to name all resources created."
}

variable "placement_group_name_suffix" {
  description = "The suffix used to name all resources created."
  default     = ""
}

locals {
  # Define resource names based on the following convention:
  # {azurerm_resource_name_prefix}-RESOURCE_TYPE-{environment}
  hcloud_placement_group_name = "${var.placement_group_name_prefix}-${var.environment}${var.placement_group_name_suffix != "" ? "-${var.placement_group_name_suffix}-" : "-"}pg"
}