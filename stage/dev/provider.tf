# Get from *.tfvars file
variable "hcloud_token" {
  default = ""
  sensitive = true
}
provider "hcloud" {
  token = var.hcloud_token
}
