variable "placement_group" {
  type = string
  description = "Placement group for different stages (dev,qa,...)"
}

variable "placement_group_type" {
  type = string
  description = "Spread is the only option here"
}