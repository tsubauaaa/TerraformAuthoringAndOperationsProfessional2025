resource "random_integer" "this" {
  min = 100
  max = 1000
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.prefix}-bucket-${random_integer.this.result}"
}
output "this" {
  value = random_integer.this.result
}
