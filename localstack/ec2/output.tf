output "instance" {
  value = aws_instance.web.public_ip
}

output "instance_ID" {
  value = aws_instance.web.id
}