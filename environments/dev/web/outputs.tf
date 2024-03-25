output "gha_role_deploy_web_arn" {
  description = "The role arn for GitHub Actions that deploys web"
  value       = module.web.gha_role_deploy_web_arn
}
