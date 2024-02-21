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
