resource "aws_subnet" "my_subnet1" {
    tags = var.subnet_tags + {
        "Virtual Cloud" = "Public"
        "Cloud Count" = "1"
    }
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.subnet_availability_zone
    map_public_ip_on_launch = true
}

resource "aws_subnet" "my_subnet2" {
    tags = var.subnet_tags + {
        "Virtual Cloud" = "Public"
        "Cloud Count" = "2"
    }
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.subnet_availability_zone
    map_public_ip_on_launch = true
}