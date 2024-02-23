#varible using list and print index wise it useful for security group
variable "list" {
    type = list
}

output "list_1st_output" {
    value = "${var.list[0]}"
}

output "list_2nd_output" {
    value = "${var.list[1]}"
}

output "list_3rd_output" {
    value = "${var.list[2]}"
}