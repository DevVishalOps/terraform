terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "instance_1" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    tags = {
      name = "my-terraform-practice"
    }
}