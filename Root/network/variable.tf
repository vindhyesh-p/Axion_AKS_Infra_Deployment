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