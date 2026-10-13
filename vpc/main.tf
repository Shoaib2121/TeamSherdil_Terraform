resource "aws_vpc" "main_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "teamSherdil_vpc"
  }
}
resource "aws_internet_gateway" "main-igw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "teamSherdil-igw"
  }
}
resource "aws_default_route_table" "private_rt" {
  default_route_table_id = aws_vpc.main_vpc.default_route_table_id
  tags = {
    Name = "teamSherdil_private_rt"
  }
}

resource "aws_route_table" "pvt-rt" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "pvt-rt"
  }
}