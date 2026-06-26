#key pair 
resource "aws_key_pair" "my_key" {
  key_name   = "${var.env}-infra-app-key"
  public_key = file("${path.root}/terra-key-ec2.pub")
}



#VPC & Secuirty group
resource "aws_default_vpc" "default" {

}


resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-infra-security-group"
  description = "Allow SSH and HTTP access"
  vpc_id      = aws_default_vpc.default.id #interpolating the default VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#ec2 instance
resource "aws_instance" "my_instance" {
  count           = var.instance_count
  ami             = var.ec2_ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]

  root_block_device {
    volume_size = var.ec2_root_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name        = "${var.env}-infra-ec2-instance"
    Environment = var.env
  }
}