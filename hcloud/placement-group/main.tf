resource "hcloud_placement_group" "pg" {
  name = "${local.hcloud_placement_group_name}"
  type = "spread" // Fixed value for now
  labels = {
    env = "${var.environment}"
  }
}
