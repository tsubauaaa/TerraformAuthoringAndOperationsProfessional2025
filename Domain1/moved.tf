resource "aws_security_group" "payment_database_firewall" {
  name = "db-firewall"
}

moved {
  from = aws_security_group.database_firewall
  to   = aws_security_group.payment_database_firewall
}
