provider "aws" {
  region = "ap-northeast-1"
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.txt"
}
