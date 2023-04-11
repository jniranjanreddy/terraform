variable "instance" {
  description = "The name of the network being created outside module "
  default     = "t2.micro"
  #type = string
}
variable "AWS_REGION" {
  default = "ap-south-1"
  #default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0e2578ce2172ae027"
    us-east-1 = "ami-00b3e95ade0a05b9b"
    
  }
}
variable "KEYS" {
  type = map(string)
  default = {
    ap-south-1 = "ap-south-1_key-pair"
    us-east-1 = "us-east-1_key-pair"
    
  }
}

variable "user_data" {
  description = "The name of the network being created outside module "
  default     = <<EOF
                #! /bin/bash
                sudo echo 'bootstraping..' > /tmp/bootstrap 
                sudo apt-get update
                sudo apt-get install -y apache2
                sudo systemctl start apache2
                sudo systemctl enable apache2
                echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
      EOF
}
