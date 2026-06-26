module "ec2_instance_dev" {
  source               = "../custom_ec2_module"
  env                  = "dev"
  bucket_name          = "my-terra-buc"
  instance_count       = 1
  instance_type        = "t3.micro"
  ec2_ami_id           = "ami-0b6d9d3d33ba97d99"
  ec2_root_volume_size = 15
  hash_key             = "lockId"
}

module "ec2_instance_prd" {
  source               = "../custom_ec2_module"
  env                  = "prd"
  bucket_name          = "my-terra-buc"
  instance_count       = 1
  instance_type        = "t3.micro"
  ec2_ami_id           = "ami-0b6d9d3d33ba97d99"
  ec2_root_volume_size = 15
  hash_key             = "lockId"
}