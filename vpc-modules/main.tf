module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
 # region    = var.region
}

module "subnets" {
  source   = "./modules/subnets"
  vpc_id   = module.vpc.vpc_id
  azs      = var.azs
  vpc_cidr = var.vpc_cidr
}

module "nat" {
  source              = "./modules/nat"
  public_subnet_ids   = module.subnets.public_subnet_ids
  single_nat_gateway  = var.single_nat_gateway
}

module "routes" {
  source            = "./modules/routes"
  vpc_id           = module.vpc.vpc_id
  public_subnet_ids = module.subnets.public_subnet_ids
  private_subnet_ids = module.subnets.private_subnet_ids
  igw_id           = module.vpc.igw_id
  nat_gateway_ids  = module.nat.nat_gateway_ids
  single_nat_gateway  = var.single_nat_gateway
  azs  = var.azs
}
