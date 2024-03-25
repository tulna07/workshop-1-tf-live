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

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "read_capacity" {
  description = "Number of read units for the table"
  type        = number
  default     = 1
}

variable "write_capacity" {
  description = "Number of write units for the table"
  type        = number
  default     = 1
}
