# output "Instance-ID" {
#   value = aws_instance.app.id
# }

output "Public-IP" {
  #value = aws_instance.app.public_ip
  value = azurerm_linux_virtual_machine.example.public_ip_address
}

output "Private-IP" {
  value = azurerm_linux_virtual_machine.example.private_ip_address
}