terraform {
  backend "s3" {
        bucket = "my-terraform-backend-bucket-1"
        region = "ap-south-1" 
        key = "terraform.tfstate"
  }
}


resource "aws_instance" "backend" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
}