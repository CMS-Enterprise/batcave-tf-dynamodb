# variables for a DynamoDB Vault backend
# https://developer.hashicorp.com/vault/docs/configuration/storage/dynamodb

table-name     = "batcave-dev-vault"
billing_mode   = "PROVISIONED"
read_capacity  = 1
write_capacity = 1
hash_key       = "Path"
range_key      = "Key"

attributes = [
  {
    name = "Path"
    type = "S"
  },
  {
    name = "Key"
    type = "S"
  }
]