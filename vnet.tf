resource "azurerm_virtual_network" "prathapnet" {
  name                = var.vnet-name
  address_space       = var.vnetcidr-address
  location            = azurerm_resource_group.prathap.location
  resource_group_name = azurerm_resource_group.prathap.name
}

resource "azurerm_subnet" "prathapsubnetA" {
  name                 = var.subnet-name
  resource_group_name  = azurerm_resource_group.prathap.name
  virtual_network_name = azurerm_virtual_network.prathapnet.name
  address_prefixes     = var.subnetcidr-address
}

