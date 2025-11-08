resource "aws_internet_gateway" "my_igw" {
    tags = var.internet_gateway_tags
    vpc_id = aws_vpc.my_vpc.id
}