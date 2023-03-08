output "name" {
  description = "The placement group name"
  value       = "${local.hcloud_placement_group_name}"
}

output "id" {
  description = "The placement group id"
  value       = "${module.hcloud_placement_group.id}"
}