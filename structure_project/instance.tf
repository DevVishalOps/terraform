resource "aws_instance" "web" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    vpc_security_group_ids = ["${aws_security_group.Structure_Project_SG.id}"]
    tags = var.tags_names
}