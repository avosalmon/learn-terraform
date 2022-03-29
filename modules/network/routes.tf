#
# public subnet
#
resource "aws_route_table" "public_subnet_route_table" {
  count  = local.num_azs
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "PublicSubnet-${count.index}-RouteTable"
    Tier = "Public"
  }
}

resource "aws_route_table_association" "public_subnet_route_table" {
  count          = local.num_azs
  route_table_id = aws_route_table.public_subnet_route_table[count.index].id
  subnet_id      = aws_subnet.public_subnet[count.index].id
}

#
# private app subnet
#
resource "aws_route_table" "private_app_subnet_route_table" {
  count  = local.num_azs
  vpc_id = aws_vpc.main.id

  route {
    cidr_block           = "0.0.0.0/0"
    network_interface_id = var.nat_network_interface_ids[count.index]
  }

  tags = {
    Name = "PrivateAppSubnet-${count.index}-RouteTable"
    Tier = "App"
  }
}

resource "aws_route_table_association" "private_app_subnet_route_table" {
  count          = local.num_azs
  route_table_id = aws_route_table.private_app_subnet_route_table[count.index].id
  subnet_id      = aws_subnet.private_app_subnet[count.index].id
}

#
# private network subnet
#
resource "aws_route_table" "private_network_subnet_route_table" {
  count  = local.num_azs
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "PrivateNetworkSubnet-${count.index}-RouteTable"
    Tier = "Network"
  }
}

resource "aws_route_table_association" "private_network_subnet_route_table" {
  count          = local.num_azs
  route_table_id = aws_route_table.private_network_subnet_route_table[count.index].id
  subnet_id      = aws_subnet.private_network_subnet[count.index].id
}

#
# private db subnet
#
resource "aws_route_table" "private_db_subnet_route_table" {
  count  = local.num_azs
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "PrivateDBSubnet-${count.index}-RouteTable"
    Tier = "DB"
  }
}

resource "aws_route_table_association" "private_db_subnet_route_table" {
  count          = local.num_azs
  route_table_id = aws_route_table.private_db_subnet_route_table[count.index].id
  subnet_id      = aws_subnet.private_db_subnet[count.index].id
}
