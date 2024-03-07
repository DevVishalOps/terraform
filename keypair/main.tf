resource "aws_instance" "key-pair" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.key-tf.key_name
    vpc_security_group_ids = ["${aws_security_group.key-pairSG.id}"]
    tags = var.tags_names
}