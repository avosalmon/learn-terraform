variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "nat_network_interface_ids" {
  type        = list(string)
  description = "The IDs of the NAT network interfaces"
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}
