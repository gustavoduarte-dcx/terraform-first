terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "sa-east-1"
  access_key = var.access_key
  secret_key = var.secret_key

  default_tags {
    tags = {
      owner      = "gustavo"
      managed-by = "terraform"
    }

  }
}
