# Get from *.tfvars file
variable "hcloud_token" {
  default = ""
}
provider "hcloud" {
  token = var.hcloud_token
}
