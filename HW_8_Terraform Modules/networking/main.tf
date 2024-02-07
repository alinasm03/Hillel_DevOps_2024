#VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.configuration}-${var.environment}-vpc"
  }
}

#Public Subnet
resource "aws_subnet" "main_public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_public_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.configuration}-${var.environment}-public-subnet"
  }
}

resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.configuration}-${var.environment}-igw"
  }
}

#Private Subnet
resource "aws_subnet" "main_private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_private_cidr
  tags = {
    Name = "${var.configuration}-${var.environment}-private-subnet"
  }
}

resource "aws_nat_gateway" "private_nat_gateway" {
  connectivity_type = "private"
  subnet_id = aws_subnet.main_private_subnet.id
  tags = {
    Name = "${var.configuration}-${var.environment}-ngw"
  }
}

#Route Tables
resource "aws_route_table" "aws_public_route_table" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public_internet_gateway.id
  }
  tags = {
    Name = "${var.configuration}-${var.environment}-public-rtb"
  }
}

resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = aws_subnet.main_public_subnet.id
  route_table_id = aws_route_table.aws_public_route_table.id

}

resource "aws_route_table" "aws_private_route_table" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.private_nat_gateway.id
  }
  tags = {
    Name = "${var.configuration}-${var.environment}-private-rtb"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  subnet_id      = aws_subnet.main_private_subnet.id
  route_table_id = aws_route_table.aws_private_route_table.id

}