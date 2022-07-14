provider "aws" {
region = "us-east-1"
}

locals {
common_tags = {
        Owners = "Devops team"
        service = "backend"
        }
}

resource "aws_iam_user" "admin1" {
name = "admin2"
tags = local.common_tags
}

resource "aws_instance" "admin1" {
ami = "ami-02e136e904f3da870"
instance_type = "t2.micro"
tags = local.common_tags

}

output "local_values" {
  value = local.common_tags
}