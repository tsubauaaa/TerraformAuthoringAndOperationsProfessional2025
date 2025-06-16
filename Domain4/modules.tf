module "ec2" {
  source        = "./ec2"
  instance_type = "t2.micro"
  ami           = "ami-12345678"
}

resource "aws_eip" "this" {
  domain   = "vpc"
  instance = module.ec2.instance_id
}
