#using terraform.tfvars file
variable "age" {
    type = number
}

variable "username" {
    type = string
}

output "map_lookup_function" {
    value = "My name is ${var.username} My age is ${var.age}"
}