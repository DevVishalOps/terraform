#list using builtin functions print
variable "list" {
    type = list
    default = ["vishal","sai"]
}

output "list_1st_output" {
    value = "${join("----->",var.list)}"
}
