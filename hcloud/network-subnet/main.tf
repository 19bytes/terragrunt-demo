resource "hcloud_network_subnet" "subnet" {
  network_id = var.network_id
  ip_range = var.subnetwork_ip_range
  type = var.subnetwork_type
  network_zone = var.subnetwork_zone
}
