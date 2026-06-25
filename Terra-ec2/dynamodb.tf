resource "aws_dynamodb_table" "example_table" {
  name         = "example-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "lockId"

  attribute {
    name = "lockId"
    type = "S"
  }
}





#remote backend
#code should be added in terraform.tf


backend "s3"{
    bucket = "bucket_name"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "example-dynamodb-table"
}