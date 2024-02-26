provider "aws" {   
    region = "ap-south-1"
}
resource "aws_instance" "newProvisioner" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.key-tf.key_name
    vpc_security_group_ids = ["${aws_security_group.newprovisionerSG.id}"]
    tags = var.tags_names

    #connection block used for provisioner
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("${path.module}/id_ed25519")
      host = "${self.public_ip}"
    }
    # 3 types of provisioner--> file,local-exec,remote-exec
    provisioner "file" {
    source = "security.tf"
    destination = "/tmp/security.tf"
    }
    
    #content you provide print the remote server
    provisioner "file" {
      content = "This my content"
      destination = "/tmp/content.md"
    }

    #local-exec print command on your local machine where terraform run & command argument is required for local-exec provisioner
    provisioner "local-exec" {
      command = "echo ${self.public_ip} > /tmp/mypublicip.txt"
    }

}