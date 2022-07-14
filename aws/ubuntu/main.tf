resource "aws_instance" "app" {
  instance_type = var.instance
  key_name      = var.KEYS[var.AWS_REGION]
  ami           = var.AMIS[var.AWS_REGION]
  user_data     = var.user_data
  tags = {
    Name = "server"
  }
}
data "aws_ec2_instance_type_offerings" "t2" {
  location_type = "region"

  filter {
    name   = "instance-type"
    values = ["t2.*"]
  }
}

