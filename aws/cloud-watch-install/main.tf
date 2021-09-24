
resource "aws_instance" "app" {
  #count = 2
  instance_type = var.instance
  key_name      = "kube-demo"
  ami           = var.image
  user_data     = var.user_data
  tags = {
    #Name = "server-${count.index}"
    Name = "server-03"
  }
}

/*
resource "aws_security_group" "aws_sg" {
  #name        = "aws_sg"
  #description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id
  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/

data "aws_ec2_instance_type_offerings" "t2" {
  location_type = "region"

  filter {
    name   = "instance-type"
    values = ["t2.*"]

  }
}
