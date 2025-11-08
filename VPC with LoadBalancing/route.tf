resource "aws_route_table" "my_rt" {
    tags = var.route_table_tags
    vpc_id = aws_vpc.my_vpc.id
    route = var.route_table_route
}
