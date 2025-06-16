variable "s3_bucket_name" {
  description = "hi"
}

resource "aws_s3_bucket" "example" {
  bucket = var.s3_bucket_name
}
