root_block_device {
    volume_size = var.env == "dev" ? 20 : var.ec2_root_volume_size
    volume_type = "gp3"
  }