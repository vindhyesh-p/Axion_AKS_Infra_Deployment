module "rg" {
  source = "../Root/rg"

  rg_config = var.rg_config
}

module "net" {
  depends_on = [module.rg]

  source = "../Root/network"

  vnet_config = var.vnet_config
  sub_config  = var.sub_config
}

module "aks" {
  depends_on = [module.rg, module.net]

  source = "../Root/AKS"

  aks_config = merge(
    var.aks_config,
    {
      subnet_id = module.net.aks_subnet_id
    }
  )
}

module "acr" {
  depends_on = [module.rg]

  source = "../Root/ACR"

  acr_config = var.acr_config
}