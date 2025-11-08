resource "aws_subnet" "my_subnet1" {
    tags = merge(var.subnet_tags, { Name = "my-subnet-1" })
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block1
    availability_zone = var.subnet_availability_zone1
    map_public_ip_on_launch = true
}

resource "aws_subnet" "my_subnet2" {
    tags = merge(var.subnet_tags, { Name = "my-subnet-2" })
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block2
    availability_zone = var.subnet_availability_zone2
    map_public_ip_on_launch = true
}