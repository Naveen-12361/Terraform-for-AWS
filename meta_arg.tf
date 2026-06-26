#add in ec2.terraform 

count = 2

#this will create 2 ec2 instances with the same configuration.
 
 # if u want output for both instances, you can use the following syntax:
 output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_instance[*].public_ip
}


# for_each

for_each = tomap({
  my-terra-instance 1 = "t2.micro"
  my-terra-instance2 = "t2.small"
})


instance_type = each.value


tags = {
  Name = each.key
}


#output for each instance
output "ec2_public_ip" {
  value = [ 
    for instance in aws_instance.my_instance : instance.public_ip 
  ]
}


