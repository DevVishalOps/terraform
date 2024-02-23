#first tf variable file
variable username {
  
}

output print {
    value = var.username
}

#second tf varible file

variable uname {

}

output show {
    value = "Hello,${var.uname}"
}