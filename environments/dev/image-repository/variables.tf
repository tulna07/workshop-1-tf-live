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
