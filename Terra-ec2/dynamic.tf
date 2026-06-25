# Dynamic block example

count = 2 # This line sets the number of instances to create. 
#In this case, it will create 2 instances.

# when u r using count argument, 
#always use * in outputs to get the values of all instances created.

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_instance[*].public_ip
}


#for_each example
# when u want to create multiple resources with different configurations, you can use for_each.

for_each = tomap({
     terra-automate-micro = "t2.micro",
     terra-automate-small = "t2.small"  
})


# instance_type = each.value # this line will set the instance type 


#tags needs to be updated to reflect the for_each usage.   
 tags = {
    Name = each.key
  }


#output needs to be updated to reflect the for_each usage.

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instances"
  value = [ 
    for instance in aws_instance.my_instance : instance.public_ip
  ]
}


#depends_on = [aws_security_group.my_security_group] # this line ensures that the EC2 instance is created only after the security group is created.