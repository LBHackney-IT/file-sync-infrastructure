# Core Infrastructure
provider "aws" {
  alias = "aws_deploy_account"
  region = var.aws_deploy_region
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

  backend "s3" {
    region  = "eu-west-2"
    key     = "services/file-sync-infrastructure/terraform.tfstate"
    bucket  = "terraform-state-devscratch"
    encrypt = true
  }
}
