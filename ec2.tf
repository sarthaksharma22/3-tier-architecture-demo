resource "aws_instance" "web" {
  ami = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public[count.index].id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  count = 2

  tags = {
    name="webserver"
  }
}

resource "aws_instance" "db" {
  ami = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]
  
  tags = {
    name = "DB server"
  }
}