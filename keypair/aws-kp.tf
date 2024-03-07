resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_ed25519.pub")
}

output "key-name" {
    value = "${aws_key_pair.key-tf.id}"
}