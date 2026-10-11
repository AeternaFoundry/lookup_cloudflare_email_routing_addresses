output "email_routing_addresses_lookup_account_id" {
  description = "Map of account_id values across all email_routing_addresses_lookup, keyed the same as var.email_routing_addresses_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_email_routing_addresses.email_routing_addresses_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "email_routing_addresses_lookup_direction" {
  description = "Map of direction values across all email_routing_addresses_lookup, keyed the same as var.email_routing_addresses_lookup except keys with no direction are omitted"
  value       = { for k, v in data.cloudflare_email_routing_addresses.email_routing_addresses_lookup : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "email_routing_addresses_lookup_max_items" {
  description = "Map of max_items values across all email_routing_addresses_lookup, keyed the same as var.email_routing_addresses_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_email_routing_addresses.email_routing_addresses_lookup : k => v.max_items if v.max_items != null }
}
output "email_routing_addresses_lookup_result" {
  description = "Map of result values across all email_routing_addresses_lookup, keyed the same as var.email_routing_addresses_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_email_routing_addresses.email_routing_addresses_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "email_routing_addresses_lookup_verified" {
  description = "Map of verified values across all email_routing_addresses_lookup, keyed the same as var.email_routing_addresses_lookup except keys with no verified are omitted"
  value       = { for k, v in data.cloudflare_email_routing_addresses.email_routing_addresses_lookup : k => v.verified if v.verified != null }
}

