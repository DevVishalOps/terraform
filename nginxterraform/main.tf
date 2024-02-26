provider "aws" {   
    region = "ap-south-1"
}
resource "aws_instance" "myproject" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.nginxSG.id}"]
    tags = var.tags_names

    user_data = <<EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install nginx -y
    sudo echo "Hiii Vishal" > /var/www/html/index.nginx-debian.html
    EOF
}