variable "aks_config" {
  type = object({
    name       = string
    location   = string
    rg_name    = string
    dns_prefix = string
    vm_size    = string
    node_count = number
    subnet_id  = string

    tags = map(string)
  })
}