variable "vpnaas_ike_policy_v2s" {
  description = <<EOT
Map of vpnaas_ike_policy_v2s, attributes below
Optional:
    - auth_algorithm
    - description
    - encryption_algorithm
    - ike_version
    - name
    - pfs
    - phase1_negotiation_mode
    - region
    - tenant_id
    - value_specs
    - lifetime (block):
        - units (optional)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    auth_algorithm          = optional(string)
    description             = optional(string)
    encryption_algorithm    = optional(string)
    ike_version             = optional(string)
    name                    = optional(string)
    pfs                     = optional(string)
    phase1_negotiation_mode = optional(string)
    region                  = optional(string)
    tenant_id               = optional(string)
    value_specs             = optional(map(string))
    lifetime = optional(list(object({
      units = optional(string)
      value = optional(number)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

