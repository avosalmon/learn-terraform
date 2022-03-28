resource "aws_subnet" "public_subnet" {
  count = local.num_azs

  vpc_id                                         = aws_vpc.main.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = data.aws_availability_zones.available.names[count.index]
  cidr_block                                     = "${cidrsubnet(aws_vpc.main.cidr_block, 8, count.index + 1)}"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PublicSubnet-${count.index}"
    Tier = "Public"
  }
}

resource "aws_subnet" "private_network_subnet" {
  count = local.num_azs

  vpc_id                                         = aws_vpc.main.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = data.aws_availability_zones.available.names[count.index]
  cidr_block                                     = "${cidrsubnet(aws_vpc.main.cidr_block, 8, local.num_azs + count.index + 1)}"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateNetworkSubnet-${count.index}"
    Tier = "Network"
  }
}

resource "aws_subnet" "private_app_subnet" {
  count = local.num_azs

  vpc_id                                         = aws_vpc.main.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = data.aws_availability_zones.available.names[count.index]
  cidr_block                                     = "${cidrsubnet(aws_vpc.main.cidr_block, 8, (local.num_azs * 2) + count.index + 1)}"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateAppSubnet-${count.index}"
    Tier = "App"
  }
}

resource "aws_subnet" "private_db_subnet" {
  count = local.num_azs

  vpc_id                                         = aws_vpc.main.id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = data.aws_availability_zones.available.names[count.index]
  cidr_block                                     = "${cidrsubnet(aws_vpc.main.cidr_block, 8, (local.num_azs * 3) + count.index + 1)}"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateDBSubnet-${count.index}"
    Tier = "DB"
  }
}
