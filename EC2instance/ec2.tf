provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name = "mkey"

  tags = {
    Name = "NewInstance"
  }
}