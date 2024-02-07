module "ec2" {
  source = "./ec2"
  environment = var.environment
  configuration = var.configuration
  public_instance_type = var.public_instance_type
  private_instance_type = var.private_instance_type
  public_subnet_id = module.networking.public_subnet_id
  private_subnet_id = module.networking.private_subnet_id
}

module "networking" {
  source = "./networking"
  environment = var.environment
  configuration = var.configuration
  vpc_cidr = var.vpc_cidr
  vpc_private_cidr = var.vpc_private_cidr
  vpc_public_cidr = var.vpc_public_cidr
}
