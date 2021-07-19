# Tags
variable "environment" {
  description = "Environment e.g. Dev, Stg, Prod, Mgmt."
  type        = string
  default     = "Dev"
}

# Project Variables
variable "aws_deploy_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "eu-west-2"
}

