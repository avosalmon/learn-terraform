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
