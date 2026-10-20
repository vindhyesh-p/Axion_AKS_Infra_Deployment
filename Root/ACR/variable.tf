variable "acr_config" {
  type = object({
    name     = string
    rg_name  = string
    location = string

  })
}
