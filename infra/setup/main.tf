terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "aw-devops-recipe-tf-state"
    key            = "tf-state-setup"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-lock"
  }
}


provider "aws" {
  region = "ap-southeast-2"
  default_tags {
    tags = {
      Project     = var.project
      Contact     = var.contact
      Environment = terraform.workspace
      ManagedBy   = "Terraform/setup"
    }
  }
}
