provider "aws" {   
    region = "ap-south-1"
}
resource "aws_instance" "Provisioner" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.key-tf.key_name
    vpc_security_group_ids = ["${aws_security_group.provisionerSG.id}"]
    tags = var.tags_names

    # 3 types of provisioner--> file,local-exec,remote-exec
    provisioner "file" {
    source = "readme.md"
    destination = "/tmp/readme.md"
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("${path.module}/id_ed25519")
      host = "${self.public_ip}"
    }
    }
}