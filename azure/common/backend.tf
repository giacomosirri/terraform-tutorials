terraform {
  backend "azurerm" {
    storage_account_name = "terraformstorageacc1234"
    container_name       = "terraformstatefilescontainer"
    key                  = "azure.terraform.tfstate"
    resource_group_name  = "terraform-rg"
    use_azuread_auth     = true
    use_oidc             = true
  }
}