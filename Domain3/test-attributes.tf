variable "firewall_name" {
  default = "demo-firewall"
}

resource "aws_security_group" "this" {
  name = var.firewall_name
}
