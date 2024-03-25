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

variable "azs" {
  description = "The choosen azs to allocate resources in the vpc"
  type        = list(string)
  default     = []
}

variable "vpc_cidr" {
  description = "The cidr block of the vpc"
  type        = string
}

variable "public_subnets" {
  description = "The cidr blocks for the public subnets"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "The cidr blocks for the private subnets"
  type        = list(string)
  default     = []
}
