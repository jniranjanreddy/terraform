variable "image" {
  description = "The name of the image being created outside module"
  #default = "ami-00399ec92321828f5"
  #default = "ami-00dfe2c7ce89a450b" # Ohio Region
  #default = "ami-0a23ccb2cdd9286bb" # Mumbai Region Amazon
  #default = "ami-04bde106886a53080" # Mumbai Region Ubuntu
  default = "ami-015453d00db6f4699"
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
    sudo echo "I ran bootstrap script" > /tmp/bootstrap
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    sudo echo "<h1>Hello World from $(hostname -f)</h1>" | sudo tee /var/www/html/index.html
    sudo systemctl restart httpd
    EOF
}