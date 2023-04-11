output "Instance-ID" {
  value = aws_instance.app.id
}

output "Public-IP" {
  value = aws_instance.app.public_ip
}

output "Private-IP" {
  value = aws_instance.app.private_ip
}

output "Seq-Groups" {
  value = aws_instance.app.vpc_security_group_ids
}

output "Tags" {
  value = aws_instance.app.tags.Name
}

