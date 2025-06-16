provider "aws" {
  default_tags {
    tags = {
      Team    = "Security"
      Env     = "Production"
      Managed = "Terraform"
    }
  }
}

resource "aws_security_group" "allow_tls" {
  name = "demo-firewall"
}

resource "aws_iam_user" "this" {
  name = "kplabs-user"
}
