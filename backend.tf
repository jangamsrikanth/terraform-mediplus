terraform {
  backend "azurerm" {
    resource_group_name  = "prathap-rg"
    storage_account_name = "backendrajesh"
    container_name       = "rajeshbackcon"
    key                  = "prod.terraform.tfstate"
  }
}
