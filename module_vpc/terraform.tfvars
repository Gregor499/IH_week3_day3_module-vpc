region = "eu-west-2"

availability_zone = {
  "private_subnet_az" = "eu-west-2b"
  "public_subnet_az"  = "eu-west-2a"
}

cidr_block = "10.0.0.0/16"

vpc_name = "gre-vpc"

public_subnet_cidr_block = "10.0.1.0/24"

private_subnet_cidr_block = "10.0.2.0/24"

ami_image = "ami-0ae9642bc1885d7b5"

instance_type = "t2.micro"