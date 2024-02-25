resource "aws_security_group" "allow_tls" {
  name        = "Terraform first SG"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22,80,443,3306]
    iterator = port
    content {
        description = "TLS from VPC"
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  }
  egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "web" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    key_name = "mkey"
    vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
    tags = {
      Name = "New SG EC2"
    }
}