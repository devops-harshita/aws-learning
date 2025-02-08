resource "aws_s3_bucket" "example" {
  bucket = "aws-learning-manual-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}