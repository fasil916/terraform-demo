
provider "aws" {
  region  = "us-east-1"  # Set your preferred AWS region
}
resource "aws_s3_bucket" "example" {
  bucket = "fazzzzz"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
