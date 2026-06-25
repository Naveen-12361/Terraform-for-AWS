#!/bin/bash

sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

echo "<h1> nginx is installed and running </h1>" | sudo tee /var/www/html/index.html



# need to add cmd in ec2 instance before volume is mounted

user_data = file("install_nginx.sh")