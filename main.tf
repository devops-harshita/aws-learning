provider "aws" {
  region     = "us-west-2"
}

# module "ec2"{
#   source = "./modules/ec2"
#   name = "harshita-ec2"
# }


# module "s3"{
#   source = "./modules/s3"
#   name = "harshita-s3-bucket-test"
# }

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-2a", "us-west-2b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "my-ec2"

  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0d10df9a90aed7e18"]
  subnet_id              = "subnet-0edf61966ffc5b280"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}