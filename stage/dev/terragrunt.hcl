include "root" {
  path = find_in_parent_folders()
}

inputs = {
  placement_group = "dev"
  placement_group_type = "spread"
}