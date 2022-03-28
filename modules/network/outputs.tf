output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = [for subnet in aws_subnet.public_subnet : {
    id                = subnet.id
    cidr_block        = subnet.cidr_block
    availability_zone = subnet.availability_zone
  }]
}

output "private_network_subnets" {
  value = [for subnet in aws_subnet.private_network_subnet : {
    id                = subnet.id
    cidr_block        = subnet.cidr_block
    availability_zone = subnet.availability_zone
  }]
}

output "private_app_subnets" {
  value = [for subnet in aws_subnet.private_app_subnet : {
    id                = subnet.id
    cidr_block        = subnet.cidr_block
    availability_zone = subnet.availability_zone
  }]
}

output "private_db_subnets" {
  value = [for subnet in aws_subnet.private_db_subnet : {
    id                = subnet.id
    cidr_block        = subnet.cidr_block
    availability_zone = subnet.availability_zone
  }]
}
