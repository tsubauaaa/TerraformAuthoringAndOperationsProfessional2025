resource "aws_instance" "staging" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  count         = 2
}

moved {
  from = aws_instance.prod[0]
  to   = aws_instance.staging[0]
}

moved {
  from = aws_instance.prod[1]
  to   = aws_instance.staging[1]
}
