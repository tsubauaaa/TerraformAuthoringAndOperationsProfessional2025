provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
}

resource "aws_security_group" "allow_tls" {
  name = "demo-firewall"
}
