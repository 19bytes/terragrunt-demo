variable "network_id" {
  description = "ID of the Network the subnet should be added to."
}

variable "subnetwork_ip_range" {
  description = "Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes."
}

variable "subnetwork_type" {
  description = "Type of subnet. cloud or vswitch"
  default = "cloud"
}

variable "subnetwork_zone" {
  description = "Name of network zone."
  default = "eu-central"
}
