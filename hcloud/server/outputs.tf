output "id" {
  description = "Unique ID of the server."
  value       = "${module.hcloud_server.id}"
}

output "datacenter" {
  description = "The datacenter name."
  value       = "${module.hcloud_server.datacenter}"
}

output "ipv4_address" {
  description = "The IPv4 address."
  value       = "${module.hcloud_server.ipv4_address}"
}

output "ipv6_address" {
  description = "The IPv6 address."
  value       = "${module.hcloud_server.ipv6_address}"
}
