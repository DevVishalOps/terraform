variable "uname" {
    type = string
}

output "map_lookup_function" {
    value = "My name is ${var.uname}"
}