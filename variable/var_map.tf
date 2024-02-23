#using map type peinting with lookup function
variable "map" {
    type = map
    default = {
        vishal = "21"
        sai = "22"
    }
}

output "map_lookup_function" {
    value = "My name is vishal ${lookup(var.map,"vishal")}"
}