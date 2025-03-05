terraform {
  backend "azurerm" {
    storage_account_name = "terraformstorageacc1234"
    container_name       = "terraformstatefilescontainer"
    key                  = "azure.terraform.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}