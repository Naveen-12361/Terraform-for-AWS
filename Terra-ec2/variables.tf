variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
}


variable "ec2_root_volume_size" {
  type        = number
  default     = 10
}


variable "ec2_ami_id" {
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
}


variable "env" {
  default = "dev"
  type    = string
}