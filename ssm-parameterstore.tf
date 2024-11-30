locals {
  ssm_id = "/${var.org_name}/${var.region_name}/${var.environment}/${var.project_name}/dynamodb/${var.resource_desc}"
}

resource "aws_ssm_parameter" "dynamodb_name" {
  name  = "${local.ssm_id}/dynamodb_name"
  type  = "String"
  value = local.id
}

resource "aws_ssm_parameter" "dynamodb_arn" {
  name  = "${local.ssm_id}/dynamodb_arn"
  type  = "StringList"
  value = join(",", aws_dynamodb_table.this[*].arn)
}
