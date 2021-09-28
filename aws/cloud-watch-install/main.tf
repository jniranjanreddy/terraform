resource "aws_instance" "app" {
  #count = 2
  instance_type = var.instance
  key_name      = "mumbai"
  ami           = var.image
  user_data     = var.user_data
  tags = {
    #Name = "server-${count.index}"
    Name = "server-01"
  }
}
data "aws_ec2_instance_type_offerings" "t2" {
  location_type = "region"

  filter {
    name   = "instance-type"
    values = ["t2.*"]

  }
}