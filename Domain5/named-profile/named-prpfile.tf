provider "aws" {
  profile = "tsubauaaa"
}

resource "aws_security_group" "allow_tls" {
  name = "demo-firewall"
}
