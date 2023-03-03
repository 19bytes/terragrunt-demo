resource "hcloud_placement_group" "placement_group" {
  name = var.placement_group
  type = var.placement_group_type
}
resource "hcloud_server" "dev_node" {
  name        = "dev-node"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  placement_group_id = hcloud_placement_group.placement_group.id
  # pre configured in hetzner ui right now
  ssh_keys = ["julian", "stefan"]
  location = "nbg1"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
