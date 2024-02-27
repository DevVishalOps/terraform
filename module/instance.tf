# resource "aws_instance" "web" {
#     ami = var.image_id
#     instance_type = var.instance_type
# }

module "mywebserver" {
    source = "./modules/webservers"
    image_id = "${var.image_id}"
    instance_type = "${var.instance_type}"
}

output "mypublicIP" {
    value = module.mywebserver.publicIP
}