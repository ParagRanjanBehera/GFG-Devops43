resource "aws_vpc" "gfg_vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "gfg-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.gfg_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "gfg-public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.gfg_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "gfg-private-subnet"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.gfg_vpc.id

  tags = {
    Name = "gfg-internet-gateway"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.gfg_vpc.id

  route {
    cidr_block = var.route_table_allowed_cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "gfg-public-route-table"
  }
}

resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_eip" "eip_gfg" {
  domain   = "vpc"
  tags = {
    Name = "gfg-eip"
  }
}

resource "aws_nat_gateway" "gfg-nat-gw" {
  allocation_id = aws_eip.eip_gfg.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "gfg-nat-gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}


resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.gfg_vpc.id

  route {
    cidr_block     = var.route_table_allowed_cidr_block
    nat_gateway_id = aws_nat_gateway.gfg-nat-gw.id
  }

  tags = {
    Name = "gfg-private-route-table"
  }
}

resource "aws_route_table_association" "private_rt_assoc" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private-rt.id
}