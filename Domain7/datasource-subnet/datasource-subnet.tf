data "aws_subnet" "this" {
  filter {
    name   = "tag:Name"
    values = ["private_01"]
  }
}

output "this" {
  value = data.aws_subnet.this.ids
}
