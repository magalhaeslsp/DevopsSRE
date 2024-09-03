module "vpc" {
  source          = "./module/vpc"
  vpc_cidr        = var.cidr_block
  vpc_name        = "${var.env}-${var.vpc_name}"
  env             = var.env
  region          = var.region
  tags            = var.globaltags # Ou use merge se quiser combinar com outros mapas de tags
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}
