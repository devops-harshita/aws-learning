resource "aws_s3_bucket" "harshita-bucket" {
  bucket = var.name

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}
