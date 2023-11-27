resource "azurerm_storage_account" "rajeshstorage" {
  name                     = "backendrajesh"
  resource_group_name      = azurerm_resource_group.prathap.name
  location                 = azurerm_resource_group.prathap.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
  resource "azurerm_storage_container" "storagecon" {
  name                  = "rajeshbackcon"
  storage_account_name  = azurerm_storage_account.rajeshstorage.name
  container_access_type = "private"
}
