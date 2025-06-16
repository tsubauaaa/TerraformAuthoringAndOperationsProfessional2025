resource "aws_iam_user" "this" {
  name     = "kplabs-user-${count.index}"
  count    = 5
  provider = aws.prod
}

resource "aws_iam_user" "lb" {
  name = "alice-user"
}
