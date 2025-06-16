data "aws_ami" "myimage" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-mantic-23.10-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.id
  instance_type = "t2.micro"
}
