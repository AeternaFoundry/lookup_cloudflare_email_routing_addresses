data "cloudflare_email_routing_addresses" "email_routing_addresses_lookup" {
  for_each = var.email_routing_addresses_lookup

  account_id = each.value.account_id
  direction  = each.value.direction
  max_items  = each.value.max_items
  verified   = each.value.verified
}

