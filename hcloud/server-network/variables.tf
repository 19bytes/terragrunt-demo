variable "srvnetwork_server_id" {
  description = "ID of the server."
}

# variable "srvnetwork_network_id" {
#   description = "ID of the network which should be added to the server. Required if subnet_id is not set."
# }

variable "srvnetwork_subnet_id" {
  description = "ID of the sub-network which should be added to the Server. Required if network_id is not set."
}
