# Security Group
resource "aws_security_group" "sg" {
  name        = "${var.project}-${var.environment}-sg"
  description = "security group"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name    = "${var.project}-${var.environment}-sg"
    Project = var.project
    Env     = var.environment
  }
}
resource "aws_vpc_security_group_ingress_rule" "igrs" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "egres" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  to_port           = 0
  ip_protocol       = "-1"
}
