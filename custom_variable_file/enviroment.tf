#print using enviroment variable 
#run using thses command---->export TF_VAR_uname=vishal then terraform plan
variable "uname" {
    type = string
}

output "map_lookup_function" {
    value = "My name is ${var.uname}"
}