variable "vpc_id" {
  description = "ID of the VPC to create NAT Instance in."
  type        = string
}

variable "public_subnets" {
  description = "List of subnets to create NAT Instance in."
  type        = list(object({
    id                = string
    cidr_block        = string
    availability_zone = string
  }))
}

variable "instance_type" {
  default = "t3.small"
}

variable "internet_access" {
  default = true
}

variable "s3_endpoint" {
  default = false
}

data "aws_ami" "ami" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }
  filter {
    name = "owner-alias"
    values = [
      "amazon",
    ]
  }
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  name                  = "NAT_Instance"
  instance_type         = var.instance_type
  nat_subnet_id_a       = var.public_subnets[0].id
  client_subnet_cidr_a  = var.public_subnets[0].cidr_block
  az_a                  = var.public_subnets[0].availability_zone
  nat_subnet_id_b       = var.public_subnets[1].id
  client_subnet_cidr_b  = var.public_subnets[1].cidr_block
  az_b                  = var.public_subnets[1].availability_zone
  nat_subnet_id_c       = var.public_subnets[2].id
  client_subnet_cidr_c  = var.public_subnets[2].cidr_block
  az_c                  = var.public_subnets[2].availability_zone

  ports = {
    tcp = [443]
    udp = []
  }

  availability_zones = data.aws_availability_zones.available.names
  num_azs            = length(data.aws_availability_zones.available.names)
  ami_image_id       = data.aws_ami.ami.image_id
  internet_route     = var.internet_access ? 1 : 0

  tags = {
    Name   = local.name
    Module = "NAT Instance"
  }
}
