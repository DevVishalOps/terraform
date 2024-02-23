resource "aws_instance" "first_instance" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    tags = {
      Name = "myInstance"
    }
}