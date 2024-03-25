output "vpc_id" {
  description = "The id of the vpc"
  value       = module.network.vpc_id
}

output "vpc_arn" {
  description = "The arn of the vpc"
  value       = module.network.vpc_arn
}

output "public_subnet_ids" {
  description = "The ids of the public subnets"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "The ids of the private subnets"
  value       = module.network.private_subnet_ids
}

output "subnet_ids" {
  description = "The ids of the subnets"
  value       = module.network.subnet_ids
}
