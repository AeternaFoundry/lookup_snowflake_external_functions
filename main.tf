data "snowflake_external_functions" "external_functions_lookup" {
  for_each = var.external_functions_lookup

  database = each.value.database
  schema   = each.value.schema
}

