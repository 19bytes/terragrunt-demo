resource "hcloud_network" "network" {
  name = local.hcloud_network_name
  ip_range = var.network_ip_range
  delete_protection = var.network_delete_protection 
  labels = {
    env = var.environment
  }
}
