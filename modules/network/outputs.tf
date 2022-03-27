output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public_subnet
}

output "private_network_subnets" {
  value = aws_subnet.private_network_subnet
}

output "private_app_subnets" {
  value = aws_subnet.private_app_subnet
}

output "private_db_subnets" {
  value = aws_subnet.private_db_subnet
}
