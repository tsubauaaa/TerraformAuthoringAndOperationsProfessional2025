
resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = data.terraform_remote_state.networking_team.outputs.vpc_cidr_ipv4
  from_port         = data.terraform_remote_state.networking_team.outputs.tls_port
  ip_protocol       = data.terraform_remote_state.networking_team.outputs.tls_protocol
  to_port           = data.terraform_remote_state.networking_team.outputs.tls_port
}
