module "web" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/web?ref=v1.0.0"

  environment  = var.environment
  project_name = var.project_name

  hosted_zone_id       = data.terraform_remote_state.routing.outputs.hosted_zone_id
  gh_oidc_provider_arn = data.terraform_remote_state.security.outputs.gh_oidc_provider_arn

  domain_name     = var.domain_name
  alb_domain_name = var.alb_domain_name

  github_org  = var.github_org
  github_repo = var.github_repo

  # Enable for production
  #   enable_bucket_versioning = true
}
