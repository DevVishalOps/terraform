resource "aws_instance" "instance_1" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    tags = {
      name = "my-terraform-practice"
    }
}