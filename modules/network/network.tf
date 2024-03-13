
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  #enable_dns_support = true
  #enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}


resource "aws_internet_gateway" "my_int_gw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = var.gateway_name
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.public_subnet_az

  tags = {
    Name = var.public_subnet_name
  }
}


resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_int_gw.id
    }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}