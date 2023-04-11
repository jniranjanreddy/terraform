resource "aws_instance" "app" {
  instance_type = var.instance
  key_name      = var.KEYS[var.AWS_REGION] # keyname will be taken based on region
  ami           = var.AMIS[var.AWS_REGION] # AMI will be used based on aws-region
  #user_data     = var.user_data  # the commands will come from variable.tf file
  user_data = "${file("apache2.sh")}" # This is a separe file in the current directory
  tags = {
    Name = "server"
  }
}
# data "aws_regions" "current" {
#   all_regions = true
# }
