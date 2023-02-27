# variables for a DynamoDB Vault backend
# https://developer.hashicorp.com/vault/docs/configuration/storage/dynamodb

table-name     = "batcave-dev-vault"
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