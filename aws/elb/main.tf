resource "aws_instance" "Node01" {
 #count = 2
 instance_type = "t2.micro"
 key_name   = "kube-demo"
 availability_zone = "us-east-2a"
 ami = "ami-0ba62214afa52bec7"

 user_data = <<-EOF
 #!/bin/bash
 sudo yum -y install nginx
 echo "host1" > /usr/share/nginx/html
 
 EOF
tags = {
    Name = "Node01"
    Env = "Dev"
    Owner = "DBA"
  }
}

resource "aws_instance" "Node02" {
 #count = 2
 instance_type = "t2.micro"
 key_name   = "kube-demo"
 availability_zone = "us-east-2a"
 ami = "ami-0ba62214afa52bec7"

 user_data = <<-EOF
 #!/bin/bash
 sudo yum -y install nginx
 echo "host1" > /usr/share/nginx/html

 EOF
tags = {
    Name = "Node02"
    Env = "Prod"
    Owner = "DevOps"
  }


}
