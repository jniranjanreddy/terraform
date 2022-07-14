output "Instance-ID" {
  value = aws_instance.app.id
}

output "Public-IP" {
  value = aws_instance.app.public_ip
}

output "Private-IP" {
  value = aws_instance.app.private_ip
}

output "availability_zone" {
  value = aws_instance.app.availability_zone
}

output "key_pair" {
  value = aws_instance.app.key_name
}