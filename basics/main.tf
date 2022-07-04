variable "myvar" {
    type = string
    default = "Hello Terraform"
    # in terraform console -> var.myvar
}
variable "mymap" {
    type = map(string)
    default = {
        name = "Rama"
        skill = "DevOps"
    # in terraform console -> var.mymap["name"]  
    }
}
# variable "myList" {
#   type = list
#   default = ["Rama", "laxmana", "Sita"]
  # in terraform console -> var.myList[0]
  # element function #element(var.myList, 0)
  # slice function #slice(var.myList, 0,3)
#}
