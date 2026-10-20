variable "rg_config" {
  type = object({
    name     = string
    location = string
  })
}

variable "vnet_config" {
  type = object({
    name     = string
    rg_name  = string
    location = string
  })
}

variable "sub_config" {
  type = object({
    name    = string
    rg_name = string
  })
}

variable "aks_config" {
  type = object({
    name       = string
    rg_name    = string
    location   = string
    dns_prefix = string
    vm_size    = string
    node_count = number
    tags       = map(string)
  })
}

variable "acr_config" {
  type = object({
    name     = string
    rg_name  = string
    location = string
  })
}