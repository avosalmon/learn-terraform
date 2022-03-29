provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"

  vpc_cidr_block            = var.vpc_cidr_block
  nat_network_interface_ids = module.nat_instance.network_interface_ids
}

module "nat_instance" {
  source = "./modules/nat_instance"

  vpc_id         = module.network.vpc_id
  public_subnets = module.network.public_subnets
}

module "bastion" {
  source = "./modules/bastion"

  vpc_id           = module.network.vpc_id
  vpc_cidr_block   = module.network.vpc_cidr_block
  public_subnets   = module.network.public_subnets
  region           = var.region
  access_ip        = var.bastion_access_ip
  warmup           = var.bastion_warmup
  min_size         = var.bastion_min_size
  max_size         = var.bastion_max_size
  desired_capacity = var.bastion_desired_capacity
  instance_type    = var.bastion_instance_type
  bastion_key      = var.bastion_key
}
