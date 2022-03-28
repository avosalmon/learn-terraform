output "route_table_ids" {
  value = aws_route_table.nat[*].id
}

output "eips" {
  value = aws_eip.public_ip_nat[*].public_ip
}

output "security_groups" {
  value = aws_security_group.nat
}

output "network_interface_ids" {
  value = aws_network_interface.nat[*].id
}
