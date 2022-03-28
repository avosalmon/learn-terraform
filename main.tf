provider "aws" {
  region = var.region
}

module "network" {
  source         = "./modules/network"
  vpc_cidr_block = var.vpc_cidr_block
}
