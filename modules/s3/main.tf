resource "aws_s3_bucket" "harshita-bucket" {
  bucket = var.name

  tags = {
    Name        = join("-",["harshita","bucket", "testing"])
    Environment = var.environment
  }
}