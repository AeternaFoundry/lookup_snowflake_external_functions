output "external_functions_lookup_id" {
  description = "Map of id values across all external_functions_lookup, keyed the same as var.external_functions_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_external_functions.external_functions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_functions_lookup_database" {
  description = "Map of database values across all external_functions_lookup, keyed the same as var.external_functions_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_external_functions.external_functions_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "external_functions_lookup_external_functions" {
  description = "Map of external_functions values across all external_functions_lookup, keyed the same as var.external_functions_lookup except keys with no external_functions are omitted"
  value       = { for k, v in data.snowflake_external_functions.external_functions_lookup : k => v.external_functions if v.external_functions != null && length(v.external_functions) > 0 }
}
output "external_functions_lookup_schema" {
  description = "Map of schema values across all external_functions_lookup, keyed the same as var.external_functions_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_external_functions.external_functions_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

