resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
  vpc_id = aws_vpc.main.id

  ingress{
  from_port= 22
  to_port = 22
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
}

ingress{
  from_port= 80
  to_port = 80
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
}

egress {
  from_port= 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

tags = {
  name = "allow_tls"
}
}

resource "aws_security_group" "allow_tls_db" {
  name = "allow_tls_db"
  vpc_id = aws_vpc.main.id

  ingress{
  from_port= 22
  to_port = 22
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
}

ingress{
  from_port= 80
  to_port = 80
  cidr_blocks = ["0.0.0.0/0"]
  protocol = "tcp"
}

egress {
  from_port= 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

tags = {
  name = "allow_tls"
}
}

