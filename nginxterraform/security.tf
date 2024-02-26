resource "aws_security_group" "nginxSG" {
   name        = "nginxSG"
   description = "Allow nginx inbound traffic"

   dynamic "ingress" {
     for_each = [22,80,443,3306]
     iterator = port
     content {
         description = "nginx from VPC"
         from_port = port.value
         to_port = port.value
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
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

 output "securityGroupDetatils" {
    value = "${aws_security_group.nginxSG.id}"
 }