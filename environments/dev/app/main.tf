module "app" {
  source = "git::https://github.com/tulna07/workshop-1-tf-modules.git//modules/app?ref=v2.0.2"

  environment  = var.environment
  project_name = var.project_name

  vpc_id               = data.terraform_remote_state.network.outputs.vpc_id
  hosted_zone_id       = data.terraform_remote_state.routing.outputs.hosted_zone_id
  gh_oidc_provider_arn = data.terraform_remote_state.security.outputs.gh_oidc_provider_arn
  ecr_repository_arn   = data.terraform_remote_state.image_repository.outputs.repository_arn
  dynamodb_table_arn   = data.terraform_remote_state.database.outputs.dynamodb_table_arn

  alb_subnet_ids = data.aws_subnets.public.ids
  app_subnet_ids = data.aws_subnets.app.ids

  domain_name = var.domain_name
  app_name    = var.app_name

  github_org  = var.github_org
  github_repo = var.github_repo

  cpu           = var.cpu
  memory        = var.memory
  desired_count = var.desired_count
  max_capacity  = var.max_capacity
  min_capacity  = var.min_capacity

  app_port = var.app_port

  container_definitions = format("[%s]",
    join(",",
      [templatefile("app-definition.tpl", {
        image_url = "${data.terraform_remote_state.image_repository.outputs.repository_url}:v0.0.0"
        app_port  = var.app_port
        }
      )]
    )
  )
}
