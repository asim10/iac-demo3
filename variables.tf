variable "instances" {
  description = "List of Google Compute instances with their configurations"
  type = list(object({
    name  = string
    zone  = string
    type  = string
  }))
}
