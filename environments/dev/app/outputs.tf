output "gha_role_deploy_app_arn" {
  description = "The role arn for GitHub Actions that deploys app"
  value       = module.app.gha_role_deploy_app_arn
}
