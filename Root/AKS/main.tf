resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_config.name
  location            = var.aks_config.location
  resource_group_name = var.aks_config.rg_name

  dns_prefix = var.aks_config.dns_prefix

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  role_based_access_control_enabled = true

  default_node_pool {
    name           = "system"
    vm_size        = var.aks_config.vm_size
    node_count     = var.aks_config.node_count
    vnet_subnet_id = var.aks_config.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.aks_config.tags
}