locals {
    region = "us-east-1"
    name = "eks-cluster"
    vpc_cidr = "10.0.0.0/16"
    azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
    intra_subnets = ["10.0.201.0/24", "10.0.202.0/24"]
    env = "dev"
}




#Locals (local)
Used for internal values within your Terraform configuration.
Cannot be changed from outside.
