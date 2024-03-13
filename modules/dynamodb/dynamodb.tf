
resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.dynamo_table_key

  attribute {
    name = var.dynamo_table_key
    type = var.dynamo_table_key_type
  }

  tags = {
    Name = var.table_name
  }
}