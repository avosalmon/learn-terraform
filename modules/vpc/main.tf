# AWS Control Tower creates a vpc when a new account is provisioned.
# https://docs.aws.amazon.com/controltower/latest/userguide/vpc-concepts.html
resource "aws_vpc" "controltower_vpc" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.31.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "aws-controltower-VPC"
  }

  tags_all = {
    Name = "aws-controltower-VPC"
  }
}
