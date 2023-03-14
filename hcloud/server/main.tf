resource "hcloud_server" "vm" {
  name        = "${var.server_name}-${var.environment}"
  image       = var.server_image
  server_type = var.server_type
  placement_group_id = var.server_placement_group_id
  # pre configured in hetzner ui right now
  ssh_keys = ["julian", "stefan"]
  location = var.server_location
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  labels = {
    env = var.environment
  }
}
