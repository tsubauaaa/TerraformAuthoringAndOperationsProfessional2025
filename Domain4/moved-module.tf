resource "aws_s3_bucket" "moved" {
  bucket = "kplabs-moce-module-practical-007"
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.2"
}

# moved {
#   from = aws_bucket.moved
#   to   = module.s3-bucket.aws_s3_bucket.this
# }
