resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_config.name
  resource_group_name = var.vnet_config.rg_name
  location            = var.vnet_config.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "aks" {
  name                 = var.sub_config.name
  resource_group_name  = var.sub_config.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}