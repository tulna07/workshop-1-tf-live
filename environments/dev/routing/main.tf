module "routing" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/routing?ref=v1.0.0"

  environment  = var.environment
  project_name = var.project_name

  hosted_zone_name = var.hosted_zone_name
}
