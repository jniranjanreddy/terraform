variable "AWS_REGION" {
  default = ["ap-south-1"]
}

variable "myList" {
  type = list
  default = ["Rama", "laxmana", "Sita"]
}

variable "AMIS" {
    type = map(string)
    default = {
      "ap-south-1" = "ami-ubuntu"
      "eu-west-1"  = "ami-CentOS"
    }
}