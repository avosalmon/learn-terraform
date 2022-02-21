resource "aws_network_acl" "network_acl_vpc" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_public_subnet_a" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.public_subnet_ids.a]

  tags = {
    Name = "PublicSubnetA-NACL"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetA-NACL"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_public_subnet_b" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.public_subnet_ids.b]

  tags = {
    Name = "PublicSubnetB-NACL"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetB-NACL"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_public_subnet_c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.public_subnet_ids.c]

  tags = {
    Name = "PublicSubnetC-NACL"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetC-NACL"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_network_subnet_a" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_network_subnet_ids.a]

  tags = {
    Name = "PrivateNetworkSubnetA-NACL"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetA-NACL"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_network_subnet_b" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_network_subnet_ids.b]

  tags = {
    Name = "PrivateNetworkSubnetB-NACL"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetB-NACL"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_network_subnet_c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_network_subnet_ids.c]

  tags = {
    Name = "PrivateNetworkSubnetC-NACL"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetC-NACL"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_app_subnet_a" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_app_subnet_ids.a]

  tags = {
    Name = "PrivateAppSubnetA-NACL"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetA-NACL"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_app_subnet_b" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_app_subnet_ids.b]

  tags = {
    Name = "PrivateAppSubnetB-NACL"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetB-NACL"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_app_subnet_c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_app_subnet_ids.c]

  tags = {
    Name = "PrivateAppSubnetC-NACL"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetC-NACL"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_db_subnet_a" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_db_subnet_ids.a]

  tags = {
    Name = "PrivateDBSubnetA-NACL"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetA-NACL"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_db_subnet_b" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_db_subnet_ids.b]

  tags = {
    Name = "PrivateDBSubnetB-NACL"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetB-NACL"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}

resource "aws_network_acl" "network_acl_private_db_subnet_c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = [var.private_db_subnet_ids.c]

  tags = {
    Name = "PrivateDBSubnetC-NACL"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetC-NACL"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}
