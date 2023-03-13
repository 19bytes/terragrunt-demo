output "name" {
  description = "The network name"
  value       = local.hcloud_network_name
}

output "id" {
  description = "The network id"
  value       = hcloud_network.network.id
}