terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }

    backend "azurerm" {
    resource_group_name  = "terragruntdemo-rg"
    storage_account_name = "terragruntdemostoracc"
    container_name       = "terragruntdemostorcon"
    key                  = "terraform.tfstate"
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
