module "dynamodb" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/database/dynamodb?ref=v1.0.0"

  environment  = var.environment
  project_name = var.project_name

  table_name     = var.table_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  # Enable in production
  # enable_deletion_protection = true
}
