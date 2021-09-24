variable "image" {
  description = "The name of the network being created outside module "
  default = "ami-0747bdcabd34c712a"
#  default = "ami-03c977bb7493e8f71"
  type = string
}

variable "instance" {
  description = "The name of the network being created outside module "
  default = "t2.micro"
  #type = string
}
variable "user_data" {
  description = "The name of the network being created outside module "
  default =                <<EOF
                #! /bin/bash
                sudo apt-get update
		            sudo apt-get install -y apache2
		            sudo systemctl start apache2
		            sudo systemctl enable apache2
		            echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
      EOF
}

