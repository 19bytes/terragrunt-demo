data "hcloud_placement_group" "pg" {
  name = var.server_placement_group
}

resource "hcloud_server" "dev_node" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  placement_group_id = hcloud_placement_group.placement_group.id
  # pre configured in hetzner ui right now
  ssh_keys = ["julian", "stefan"]
  location = var.server_location
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  labels = {
    env = var.server_environment
  }
}
