module "security" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/security?ref=v1.0.0"

  environment  = var.environment
  project_name = var.project_name
}
