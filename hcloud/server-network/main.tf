resource "hcloud_server_network" "srvnetwork" {
  server_id = var.srvnetwork_server_id
  # network_id = var.srvnetwork_network_id
  subnet_id = var.srvnetwork_subnet_id
}
