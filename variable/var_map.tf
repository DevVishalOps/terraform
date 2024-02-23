#using map type peinting with lookup function
variable "map" {
    type = map
    default = {
        vishal = "21"
        sai = "22"
    }
}

variable "username" {
    type = string
}

output "map_lookup_function" {
    value = "My name is ${var.username} ${lookup(var.map,"${var.username}")}"
}