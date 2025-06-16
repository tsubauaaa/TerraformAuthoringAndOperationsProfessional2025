# resource "aws_instance" "a" {
#   ami           = "ami-12345678"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "b" {
#   ami           = "ami-12345678"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "c" {
#   count         = 2
#   ami           = "ami-12345678"
#   instance_type = "t2.micro"
# }

# moved {
#   from = aws_instance.a
#   to   = aws_instance.c[0]
# }

# moved {
#   from = aws_instance.b
#   to   = aws_instance.c[1]
# }
