output "table_arn" {
  description = "ARN of the DynamoDB table"
  value       = aws_dynamodb_table.this.arn
}
output "name" {
  description = "ARN of the DynamoDB table"
  value       = aws_dynamodb_table.this.name
}
output "ssm_parameter_store_dynamodb_name" {
  description = "ARN of the DynamoDB table"
  value       = "${local.ssm_id}/dynamodb_name"
}
output "ssm_parameter_store_dynamodb_arn" {
  description = "ARN of the DynamoDB table"
  value       = "${local.ssm_id}/dynamodb_arn"
}