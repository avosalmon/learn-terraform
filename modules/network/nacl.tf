resource "aws_network_acl" "network_acl_vpc" {
  vpc_id = aws_vpc.main.id

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
}

resource "aws_network_acl" "network_acl_public_subnet" {
  count = local.num_azs

  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.public_subnet[count.index].id]

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

  tags = {
    Name = "PublicSubnet-${count.index}-NACL"
    Tier = "Public"
  }
}

resource "aws_network_acl" "network_acl_private_network_subnet" {
  count = local.num_azs

  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.private_network_subnet[count.index].id]

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

  tags = {
    Name = "PrivateNetworkSubnet-${count.index}-NACL"
    Tier = "Network"
  }
}

resource "aws_network_acl" "network_acl_private_app_subnet" {
  count = local.num_azs

  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.private_app_subnet[count.index].id]

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

  tags = {
    Name = "PrivateAppSubnet-${count.index}-NACL"
    Tier = "App"
  }
}

resource "aws_network_acl" "network_acl_private_db_subnet" {
  count = local.num_azs

  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.private_db_subnet[count.index].id]

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

  tags = {
    Name = "PrivateDBSubnet-${count.index}-NACL"
    Tier = "DB"
  }
}
