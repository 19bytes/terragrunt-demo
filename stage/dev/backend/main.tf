# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#     }
#   }
# }

# tags for repeated usage
locals {
  common_tags = {
    department = "dev"
    app        = "terragrunt-demo"
  }
}

# create resource group for terraform remote state resources
resource "azurerm_resource_group" "terragrunt_demo_rg" {
  name     = "${var.r_prefix}-rg"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "terragrunt_demo_storacc" {
  name                     = "${var.r_prefix}storacc"
  resource_group_name      = azurerm_resource_group.terragrunt_demo_rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_container" "terragrunt_demo_storcon" {
  name                  = "${var.r_prefix}storcon"
  storage_account_name  = azurerm_storage_account.terragrunt_demo_storacc.name
  container_access_type = "private"
}
