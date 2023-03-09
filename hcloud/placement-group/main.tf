resource "hcloud_placement_group" "pg" {
  name = local.hcloud_placement_group_name
  type = var.placement_group_type
  labels = {
    env = var.environment
  }
}
