resource "azurerm_network_interface" "prathapnic" {
  name                = var.nic-name
  location            = azurerm_resource_group.prathap.location
  resource_group_name = azurerm_resource_group.prathap.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.prathapsubnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.prathappi.id
  }
}
