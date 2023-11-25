variable "rg-name" {
    default = "rajeshterra1"
    type = string
}
variable "rg-location" {
    default = "uk south"
    type = string
  }
  variable "vnet-name"{
    default = "rajeshvnet"
    type = string
  }
  variable "subnet-name" {
    default = "rajeshsubnet"
    type = string
  }
  variable "vnetcidr-address" {
    default = ["192.168.0.0/16"]
    type = list(string)    
  }
  variable "subnetcidr-address" {
    default = ["192.168.0.0/24"]
    type = list(string)
  }
  variable "nic-name" {
    default = "rajeshnic"
    type = string
  }
  variable "nsg-name" {
    default = "rajeshnsg"
    type = string
  }
  variable "public-name" {
    default = "rajeshpublicip"
    type = string
  }
  variable "virtual-machine" {
    default = "rajeshvirtual"
    type = string
  }