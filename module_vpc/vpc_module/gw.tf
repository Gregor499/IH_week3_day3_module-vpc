resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.gre-vpc.id
  tags = {
    Name = "gw"
  }
}