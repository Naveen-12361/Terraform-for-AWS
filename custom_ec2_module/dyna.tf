resource "aws_dynamodb_table" "example_table" {
  name         = "${var.env}-dynamodb_table_name"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "lockId"

  attribute {
    name = var.hash_key
    type = "S"
  }


  tags = {
     name        = "${var.env}-dynamodb_table_name"
     Environment = var.env
}
}


