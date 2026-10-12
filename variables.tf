variable "external_functions_lookup" {
  description = <<EOT
Map of external_functions_lookup, attributes below
Optional:
    - database
    - schema
EOT

  type = map(object({
    database = optional(string)
    schema   = optional(string)
  }))
}

