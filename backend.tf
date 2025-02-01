terraform {
  backend "s3" {
    bucket = "aws-terraform-backend1"
    key    = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-locks"
  }
}
