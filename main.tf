module "dynamodb_table" {
  source         = "terraform-aws-modules/dynamodb-table/aws"
  version        = "3.3.0"
  name           = var.table-name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attributes = var.attributes

  tags = var.tags

  autoscaling_enabled                   = var.autoscaling_enabled
  ignore_changes_global_secondary_index = var.ignore_changes_global_secondary_index

  autoscaling_read = {
    scale_in_cooldown  = 50
    scale_out_cooldown = 40
    target_value       = 70
    max_capacity       = 10
  }

  autoscaling_write = {
    scale_in_cooldown  = 50
    scale_out_cooldown = 40
    target_value       = 70
    max_capacity       = 10
  }

}
