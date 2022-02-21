resource "aws_subnet" "public_subnet_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PublicSubnetA"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetA"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "public_subnet_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PublicSubnetB"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetB"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "public_subnet_c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PublicSubnetC"
    Tier = "Public"
  }

  tags_all = {
    Name = "PublicSubnetC"
    Tier = "Public"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_network_subnet_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.64.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateNetworkSubnetA"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetA"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_network_subnet_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.80.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateNetworkSubnetB"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetB"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_network_subnet_c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.96.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateNetworkSubnetC"
    Tier = "Network"
  }

  tags_all = {
    Name = "PrivateNetworkSubnetC"
    Tier = "Network"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_app_subnet_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.112.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateAppSubnetA"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetA"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_app_subnet_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.128.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateAppSubnetB"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetB"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_app_subnet_c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.144.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateAppSubnetC"
    Tier = "App"
  }

  tags_all = {
    Name = "PrivateAppSubnetC"
    Tier = "App"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_db_subnet_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.208.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateDBSubnetA"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetA"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_db_subnet_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.224.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateDBSubnetB"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetB"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}

resource "aws_subnet" "private_db_subnet_c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.240.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "PrivateDBSubnetC"
    Tier = "DB"
  }

  tags_all = {
    Name = "PrivateDBSubnetC"
    Tier = "DB"
  }

  vpc_id = var.vpc_id
}
