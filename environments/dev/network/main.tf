module "network" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/network?ref=v1.0.0"

  environment  = var.environment
  project_name = var.project_name

  vpc_cidr = var.vpc_cidr
  azs      = formatlist("${var.region}%s", var.azs)

  public_subnets = [
    for cidr in var.public_subnets : {
      cidr : cidr
    }
  ]

  private_subnets = [
    for cidr in var.private_subnets : {
      cidr : cidr,
      tier : "app"
    }
  ]
}
