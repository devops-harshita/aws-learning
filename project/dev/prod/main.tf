module "ec2"{
  source = "./modules/ec2"
  name = "${local.name}"
}


module "s3"{
  source = "./modules/s3"
  name = "${local.name}"
}
