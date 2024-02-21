module "dynamodb_table" {
  source         = "terraform-aws-modules/dynamodb-table/aws"
  version        = var.module_version
  name           = var.table-name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attributes = var.attributes

  tags = var.tags
}
