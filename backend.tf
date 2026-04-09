terraform {
  backend "azurerm" {
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    tenant_id            = "85fad5f9-4cc5-456c-934a-7fa1cb0fd700"  # Can also be set via `ARM_TENANT_ID` environment variable.
    subscription_id      = "226ae92d-e1b2-48e6-815b-b9f3f3833cb4"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable. # Can also be set via `ARM_CLIENT_ID` environment variable.
    resource_group_name  = "RG"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "statefilemain"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "devcontainer"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
