locals {
  id = "${var.org_name}-${var.environment}-${var.project_name}-${var.region_name}-dynamodb-${var.resource_desc}"
}

data "aws_ssm_parameter" "ssm_parameter_store_kms_key_name" {
  name = var.ssm_parameter_store_kms_key_name
}

locals {
  kms_key_arn = data.aws_ssm_parameter.ssm_parameter_store_kms_key_name.value
}

resource "aws_dynamodb_table" "this" {
  name         = local.id
  billing_mode = var.billing_mode
  hash_key     = var.hash_key
  # read_capacity  = var.read_capacity
  # write_capacity = var.write_capacity
  server_side_encryption {
    enabled     = var.server_side_encryption_enabled
    kms_key_arn = local.kms_key_arn
  }
  attribute {
    name = var.hash_key
    type = "S"
  }
  tags = merge(
    { Name = local.id },
  var.default_tags)
}
