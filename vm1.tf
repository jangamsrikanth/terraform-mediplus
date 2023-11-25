resource "azurerm_virtual_machine" "prathapvm" {
  name                  = var.virtual-machine
  location              = azurerm_resource_group.prathap.location
  resource_group_name   = azurerm_resource_group.prathap.name
  network_interface_ids = [azurerm_network_interface.prathapnic.id]
  vm_size               = "Standard_DS1_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "prathap1"
    admin_username = "prathap"
    admin_password = "Prathap@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
  connection {
    type     = "ssh"
    user     = "prathap"
    password = "Prathap@123456"
    host     = azurerm_public_ip.prathappi.ip_address
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update", 
      "sudo apt-get install nginx -y",
      "sudo apt-get install zip -y" ,
      "sudo apt-get install unzip -y",
      "wget https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip",
      "sudo unzip mediplus-lite.zip",
      "sudo mv mediplus-lite /var/www/html"
    ]
  }
}
