resource "aws_elb" "my_elb" {
    name = var.load_balancer_name
    security_groups = [aws_security_group.my_sg.id]
    subnets = [aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]
    listener {
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }
    tags = var.load_balancer_tags
}