# same like if else statement in programming language
variable "env" {
  default = "prd"
  type    = string
}


volume_size = var.env == "prd" ? 20 : var.ec2_root_volume_size
