output "id" {
  description = "ARN of the DynamoDB table"
  value       = module.dynamodb_table.id
}

output "arn" {
  description = "ID of the DynamoDB table"
  value       = module.dynamodb_table.arn
}