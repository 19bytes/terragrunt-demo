variable "server_name" {
  description = "The name identifying the server."
}

variable "server_image" {
  description = "The OS image used in the server."
}

variable "server_type" {
  description = "The type of the server."
  default = "cx11"
}

variable "server_location" {
  description = "The location where the virtual machine should be created at."
}

variable "environment" {
  description = "The nick name identifying the type of environment (i.e. test, staging, production)"
}

variable "server_placement_group_id" {
  description = "Placement Group ID the server added to on creation."
}
