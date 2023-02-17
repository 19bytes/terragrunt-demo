terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }
}
resource "hcloud_server" "node1" {
  name        = "node1"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  # pre configured in hetzner ui right now
  ssh_keys = ["julian","stefan"]
  location = "nbg1"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
