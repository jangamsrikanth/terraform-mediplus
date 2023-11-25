resource "azurerm_public_ip" "prathappi" {
  name                = var.public-name
  resource_group_name = azurerm_resource_group.prathap.name
  location            = azurerm_resource_group.prathap.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
