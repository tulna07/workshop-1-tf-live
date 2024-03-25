output "repository_name" {
  description = "The name of the repository"
  value       = module.image_repository.repository_name
}

output "repository_url" {
  description = "The url of the repository"
  value       = module.image_repository.repository_url
}

output "registry_id" {
  description = "The registry ID where the repository was created"
  value       = module.image_repository.registry_id
}

output "repository_arn" {
  description = "The arn of the repo"
  value       = module.image_repository.repository_arn
}

