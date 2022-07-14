
provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_eip" "ip" {
    vpc = true
    #instance = aws_instance.example.id
}

resource "aws_instance" "example" {
  ami           = "ami-13be557e"
  instance_type = "t2.micro"
  depends_on = [ aws_eip.ip ]
}

resource "aws_s3_bucket" "example" {
  bucket = "jnrlabs2"
  acl    = "private"
#   depends_on = [aws_instance.example]
}

# resource "aws_instance" "example" {
#   ami           = "ami-2757f631"
#   instance_type = "t2.micro"

#   depends_on = [aws_s3_bucket.example]
# }