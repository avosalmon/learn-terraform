output "public_subnet_ids" {
  value = {
    a = aws_subnet.public_subnet_a.id
    b = aws_subnet.public_subnet_b.id
    c = aws_subnet.public_subnet_c.id
  }
}

output "private_network_subnet_ids" {
  value = {
    a = aws_subnet.private_network_subnet_a.id
    b = aws_subnet.private_network_subnet_b.id
    c = aws_subnet.private_network_subnet_c.id
  }
}

output "private_app_subnet_ids" {
  value = {
    a = aws_subnet.private_app_subnet_a.id
    b = aws_subnet.private_app_subnet_b.id
    c = aws_subnet.private_app_subnet_c.id
  }
}

output "private_db_subnet_ids" {
  value = {
    a = aws_subnet.private_db_subnet_a.id
    b = aws_subnet.private_db_subnet_b.id
    c = aws_subnet.private_db_subnet_c.id
  }
}

# output "public_subnet_a_id" {
#   value = aws_subnet.public_subnet_a.id
# }

# output "public_subnet_b_id" {
#   value = aws_subnet.public_subnet_b.id
# }

# output "public_subnet_c_id" {
#   value = aws_subnet.public_subnet_c.id
# }

# output "private_network_subnet_a_id" {
#   value = aws_subnet.private_network_subnet_a.id
# }

# output "private_network_subnet_b_id" {
#   value = aws_subnet.private_network_subnet_b.id
# }

# output "private_network_subnet_c_id" {
#   value = aws_subnet.private_network_subnet_c.id
# }

# output "private_app_subnet_a_id" {
#   value = aws_subnet.private_app_subnet_a.id
# }

# output "private_app_subnet_b_id" {
#   value = aws_subnet.private_app_subnet_b.id
# }

# output "private_app_subnet_c_id" {
#   value = aws_subnet.private_app_subnet_c.id
# }

# output "private_db_subnet_a_id" {
#   value = aws_subnet.private_db_subnet_a.id
# }

# output "private_db_subnet_b_id" {
#   value = aws_subnet.private_db_subnet_b.id
# }

# output "private_db_subnet_c_id" {
#   value = aws_subnet.private_db_subnet_c.id
# }
