# Core Infrastructure
provider "aws" {
  alias = "aws_deploy_account"
  region = var.aws_deploy_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.aws_deploy_account}:role/${var.aws_deploy_iam_role_name}"
    session_name = "Terraform"
  }
}

# General
terraform {
  required_version = ">= 0.14.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}
