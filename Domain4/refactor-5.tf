
module "iam" {
  source = "./iam"
  providers = {
    aws.prod = aws.mumbai
  }
}

module "sg" {
  source = "./network"
  providers = {
    aws.prod = aws.mumbai
  }
}