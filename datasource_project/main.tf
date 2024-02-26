data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["${var.image_name}"]
  }

  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  
}

resource "aws_instance" "web" {
  ami           =data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ "${aws_security_group.DataSourceSG.id}" ]
  tags = var.tags_names
}