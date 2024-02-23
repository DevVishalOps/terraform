#varible using list and print index wise it useful for security group
variable "list" {
    type = list
    default = ["vishal","sai"]
}

output "list_1st_output" {
    value = "${var.list[0]}"
}
