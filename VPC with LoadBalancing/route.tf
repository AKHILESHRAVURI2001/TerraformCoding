resource "aws_route_table" "my_rt" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = var.route_table_tags

  dynamic "route" {
    for_each = var.route_table_route
    content {
      cidr_block  = lookup(route.value, "cidr_block", null)
      gateway_id = aws_internet_gateway.my_igw.id
    }
  }
}
