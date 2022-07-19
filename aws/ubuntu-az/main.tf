resource "aws_instance" "app" {
  instance_type = var.instance
  key_name      = var.KEYS[var.AWS_REGION]
  ami           = var.AMIS[var.AWS_REGION]
  user_data     = var.user_data
  availability_zone = "us-east-1b"
  tags = {
    Name = "server"
  }
}

resource "aws_instance" "example123" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = var.instance
}
