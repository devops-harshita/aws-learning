resource "aws_s3_bucket" "harshita-bucket" {
  bucket = "harshita.com"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
