output "Public-IP" {
  value = azurerm_linux_virtual_machine.example.public_ip_address
}

output "Private-IP" {
  value = azurerm_linux_virtual_machine.example.private_ip_address
}