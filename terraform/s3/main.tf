provider "aws" {
  region     = "us-east-1"
  endpoints  = {
    s3 = "http://localhost:4566"  # LocalStack endpoint for S3
  }
  access_key = "dummy_access_key"
  secret_key = "dummy_secret_key"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}
