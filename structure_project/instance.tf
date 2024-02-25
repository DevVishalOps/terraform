provider "aws" {   
    region = "ap-south-1"
}
resource "aws_instance" "myproject" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = ["aws_security_group.allow_tls"]
    tags = var.tags_names
}