# module "ubuntu-instance" {
# source = "./aws/ubuntu"
# }

data "aws_ami" "app_ami" {
        most_recent = true
        owners = ["amazon"]
        filter {
                name = "name"
                values = ["amzn2-ami-hvm*"]
        }

}

output "find-ami" {
  value = data.aws_ami.app_ami.id
}
