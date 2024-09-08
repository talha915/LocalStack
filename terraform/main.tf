terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  # Update to the latest version if needed
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  endpoints  = {
    s3 = "http://localhost:4566"  # LocalStack endpoint
  }
  access_key = "dummy_access_key"
  secret_key = "dummy_secret_key"
}

module "s3" {
  source = "./s3"
}
