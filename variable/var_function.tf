#list using builtin functions print
variable "list" {
    type = list
    default = ["vishal","sai"]
}

output "list_join_function" {
    value = "${join("----->",var.list)}"
}

output "list_upper_function" {
    value = "${upper(var.list[0])}"
}
