variable "image" {
  description = "The name of the image being created outside module"
  #default = "ami-0a23ccb2cdd9286bb" # Mumbai Region Amazon
  default = "ami-04bde106886a53080" # Mumbai Region Ubuntu
  type    = string
}
variable "instance" {
  description = "The name of the network being created outside module "
  default     = "t2.micro"
  #type = string
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