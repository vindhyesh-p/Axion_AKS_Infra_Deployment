resource "azurerm_container_registry" "acr" {
    
  name                = var.acr_config.name
  resource_group_name = var.acr_config.rg_name
  location            = var.acr_config.location
  sku                 = "Basic"
  admin_enabled       = false
}