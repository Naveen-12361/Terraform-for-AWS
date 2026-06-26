variable "env" {
  description = "this is the environment variable"
  type        = string
}


variable "bucket_name" {
  description = "this is the bucket name variable"
  type        = string

}


variable "instance_count" {
  description = "this is the instance count variable"
  type        = number
}


variable "instance_type" {
  description = "this is the instance type variable"
  type        = string
}

variable "ec2_ami_id" {
  description = "this is the ec2 ami id variable"
  type        = string
}


variable "ec2_root_volume_size" {
  description = "this is the ec2 root volume size variable"
  type        = number
}

variable "hash_key" {
  description = "this is the hash key variable"
  type        = string
}