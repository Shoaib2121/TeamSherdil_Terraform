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
