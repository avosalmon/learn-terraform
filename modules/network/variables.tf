variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}
