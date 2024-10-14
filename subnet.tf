resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block= var.cidr[count.index]
  availability_zone = var.az[count.index]
  count = 2

   tags={
    name="public-sub"
     }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    name= "private-sub"
  }
}