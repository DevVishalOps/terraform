variable "name" {
    type = string
    default = "Vishal"
}

variable "age" {
    type = number
    default = 18
}
output "t1"{
    value = "My name ${var.name} and My Age is ${var.age}"
}