provider "aws" {
  region     = "us-west-2"
}

module "ec2"{
  source = "./modules/ec2"
}


module "s3"{
  source = "./modules/s3"
}