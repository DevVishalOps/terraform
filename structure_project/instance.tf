resource "aws_instance" "web" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    vpc_security_group_ids = ["aws_security_group.allow_tls"]
    tags = var.tags_names
}