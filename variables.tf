variable "table-name" {
  type = string
}

variable "billing_mode" {
  type    = string
  default = "PAY_PER_REQUEST"
}

variable "read_capacity" {
  description = "Can only be used when billing_mode is PROVISIONED"
  type        = number
  default     = null
}

variable "write_capacity" {
  description = "Can only be used when billing_mode is PROVISIONED"
  type        = number
  default     = null
}

variable "hash_key" {
  type = string
}

variable "range_key" {
  type = string
}

variable "attributes" {
  type = list(map(string))

  # defaults for a standard Vault deployment
  default = [
    {
      name = "Path"
      type = "S"
    },
    {
      name = "Key"
      type = "S"
    }
  ]
}

variable "tags" {
  type = map(string)
  default = {
    Owner = "Batcave"
  }
}

variable "autoscaling_enabled" {
  description = "Whether or not to enable autoscaling. See note in README about this setting"
  type        = bool
  default     = false
}

variable "autoscaling_defaults" {
  description = "A map of default autoscaling settings"
  type        = map(string)
  default = {
    scale_in_cooldown  = 0
    scale_out_cooldown = 0
    target_value       = 70
  }
}

variable "autoscaling_read" {
  description = "A map of read autoscaling settings. `max_capacity` is the only required key. See example in examples/autoscaling"
  type        = map(string)
  default     = {}
}

variable "autoscaling_write" {
  description = "A map of write autoscaling settings. `max_capacity` is the only required key. See example in examples/autoscaling"
  type        = map(string)
  default     = {}
}

variable "autoscaling_indexes" {
  description = "A map of index autoscaling configurations. See example in examples/autoscaling"
  type        = map(map(string))
  default     = {}
}

variable "ignore_changes_global_secondary_index" {
  description = "Whether to ignore changes lifecycle to global secondary indices, useful for provisioned tables with scaling"
  type        = bool
  default     = false
}
