resource "aws_route_table_association" "my_subnet1_association" {
    subnet_id = aws_subnet.my_subnet1.id
    route_table_id = aws_route_table.my_rt.id
}

resource "aws_route_table_association" "my_subnet2_association" {
    subnet_id = aws_subnet.my_subnet2.id
    route_table_id = aws_route_table.my_rt.id
}
