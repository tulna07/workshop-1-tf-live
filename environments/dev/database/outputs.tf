output "dynamodb_table_arn" {
  description = "The arn of the dynamodb table"
  value       = module.dynamodb.table_arn
}
