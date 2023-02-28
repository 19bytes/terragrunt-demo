remote_state {
    backend = "azurerm"
    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
    config = {
        resource_group_name  = "terragruntdemo-rg"
        storage_account_name = "terragruntdemostoracc"
        container_name       = "terragruntdemostorcon"
        key                  = "${path_relative_to_include()}/terraform.tfstate"
    }
}
