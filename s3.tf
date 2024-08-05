variable "AWS_ACCESS_KEY_ID" {
  type = string
  description = "The AWS access key ID"
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  description = "The AWS secret access key"
  sensitive = true
}

provider "aws" {
  region  = "us-east-1"  # Set your preferred AWS region
access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}
resource "aws_s3_bucket" "example" {
  bucket = "fazzzzz"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
