#first tf variable file
variable username {
  
}

output print {
    value = var.username
}

# terraform plan -var "username=vishal"

#second tf varible file

variable uname {

}

output show {
    value = "Hello,${var.uname}"
}

#terraform plan -var "uname=vishal" 