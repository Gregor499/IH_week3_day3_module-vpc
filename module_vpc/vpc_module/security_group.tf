resource "aws_security_group" "public_security_group" {
  name        = "allow_public_traffic"
  description = "Allow traffic on public VM"
  vpc_id      = aws_vpc.gre-vpc.id

  ingress {
    description = "TLS from internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Http from internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_private_traffic"
  }
}

resource "aws_security_group" "private_security_group" {
  name        = "allow_private_traffic"
  description = "Allow traffic on private VM"
  vpc_id      = aws_vpc.gre-vpc.id
 
 
  ingress {
    description = "TLS from Internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_subnet.public_subnet.cidr_block]
  }
 
 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 
 
  }
 
 
  tags = {
    Name = "allow_private_traffic"
  }
}

