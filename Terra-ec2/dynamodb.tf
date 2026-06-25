resource "aws_dynamodb_table" "example_table" {
  name         = "example-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "lockId"

  attribute {
    name = "lockId"
    type = "S"
  }
}