## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_ssm_parameter.dynamodb_arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.dynamodb_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.ssm_parameter_store_kms_key_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Billing mode for the table (PROVISIONED or PAY\_PER\_REQUEST) | `string` | `"PROVISIONED"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Additional resource tags to be applied to all the resources created | `map(string)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | namespace to segregate the resources from other environment and used in the naming convention | `string` | `null` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | Name of the hash key for the table | `string` | n/a | yes |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | the organization name to be used for naming convention | `string` | `null` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | the project name to be used for naming convention | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | Read capacity units for the table | `number` | `5` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | the region name to be used for naming convention | `string` | `null` | no |
| <a name="input_resource_desc"></a> [resource\_desc](#input\_resource\_desc) | the resource desc to be used for naming convention | `string` | `null` | no |
| <a name="input_server_side_encryption_enabled"></a> [server\_side\_encryption\_enabled](#input\_server\_side\_encryption\_enabled) | enable server side encryption | `bool` | `true` | no |
| <a name="input_ssm_parameter_store_kms_key_name"></a> [ssm\_parameter\_store\_kms\_key\_name](#input\_ssm\_parameter\_store\_kms\_key\_name) | ssm parameter store kms\_key name | `string` | `""` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | Write capacity units for the table | `number` | `5` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | ARN of the DynamoDB table |
| <a name="output_ssm_parameter_store_dynamodb_arn"></a> [ssm\_parameter\_store\_dynamodb\_arn](#output\_ssm\_parameter\_store\_dynamodb\_arn) | ARN of the DynamoDB table |
| <a name="output_ssm_parameter_store_dynamodb_name"></a> [ssm\_parameter\_store\_dynamodb\_name](#output\_ssm\_parameter\_store\_dynamodb\_name) | ARN of the DynamoDB table |
| <a name="output_table_arn"></a> [table\_arn](#output\_table\_arn) | ARN of the DynamoDB table |
