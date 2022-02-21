provider "aws" {
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"

  vpc_id = module.vpc.controltower_vpc_id
}

module "nacl" {
  source = "./modules/nacl"

  vpc_id                     = module.vpc.controltower_vpc_id
  public_subnet_ids          = module.subnet.public_subnet_ids
  private_network_subnet_ids = module.subnet.private_network_subnet_ids
  private_app_subnet_ids     = module.subnet.private_app_subnet_ids
  private_db_subnet_ids      = module.subnet.private_db_subnet_ids
}