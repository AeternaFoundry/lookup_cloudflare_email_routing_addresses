variable "email_routing_addresses_lookup" {
  description = <<EOT
Map of email_routing_addresses_lookup, attributes below
Optional:
    - account_id
    - direction
    - max_items
    - verified
EOT

  type = map(object({
    account_id = optional(string)
    direction  = optional(string)
    max_items  = optional(number)
    verified   = optional(bool)
  }))
}

