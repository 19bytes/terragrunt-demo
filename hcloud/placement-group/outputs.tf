output "name" {
  description = "The placement group name"
  value       = local.hcloud_placement_group_name
}

output "id" {
  description = "The placement group id"
  value       = hcloud_placement_group.pg.id
}