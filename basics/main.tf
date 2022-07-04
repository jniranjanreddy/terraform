variable "myvar" {
    type = string
    default = "Hello Terraform"
}

variable "mymap" {
    type = map(string)
    default = {
        mykey = "Value"
        name = "Rama"
        skill = "DevOps"

    }
}