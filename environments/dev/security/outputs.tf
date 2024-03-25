output "gh_oidc_provider_arn" {
  description = "The arn of GitHub openid connect provider"
  value       = module.security.gh_oidc_provider_arn
}
