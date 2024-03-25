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
  description = "The domain name of the application"
  type        = string
}

variable "app_name" {
  description = "The name of the application"
  type        = string
}

variable "app_port" {
  description = "The port of the application"
  type        = number
}

variable "github_org" {
  description = "The GitHub organization that the GitHub Actions role trusts"
  type        = string
}

variable "github_repo" {
  description = "The GitHub repository that the GitHub Actions role trusts"
  type        = string
}

variable "cpu" {
  description = "Number of cpu units used by the task"
  type        = string
}

variable "memory" {
  description = "Amount (in MiB) of memory used by the task"
  type        = string
}

variable "desired_count" {
  description = "Number of instances of the task definition"
  type        = number
}

variable "max_capacity" {
  description = "The maximum number of tasks allowed in service"
  type        = number
  default     = 4
}

variable "min_capacity" {
  description = "The minimum number of tasks allowed in service"
  type        = number
  default     = 1
}
