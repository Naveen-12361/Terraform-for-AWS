terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.52.0"
    }
  }

  #state manage backend
  backend "s3" {
    bucket = "terraform-bucket"
    key = terraform.tfstate
    region = "us-east-1"
    dynamodb_table = "Terra-DynamoDB-Table"
  }
}