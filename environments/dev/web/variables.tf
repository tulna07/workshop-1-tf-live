variable "region" {
  description = "The AWS region of the project"
  type        = string
}

variable "environment" {
  description = "The environment to which the project delploys"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "domain_name" {
  description = "The domain name of the website"
  type        = string
}

variable "alb_domain_name" {
  description = "The domain name of the alb"
  type        = string
}

variable "github_org" {
  description = "The GitHub organization that the GitHub Actions role trusts"
  type        = string
}

variable "github_repo" {
  description = "The GitHub repository that the GitHub Actions role trusts"
  type        = string
}

variable "s3_bucket_force_destroy" {
  description = "If true, remove all items in the bucket and then remove the bucket"
  type        = bool
  default     = false
}
