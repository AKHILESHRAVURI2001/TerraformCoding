resource "aws_autoscaling_group" "my_asg" {
  name                      = var.auto_scaling_group_name
  min_size                  = var.auto_scaling_group_min_size
  max_size                  = var.auto_scaling_group_max_size
  desired_capacity           = var.auto_scaling_group_desired_capacity
  vpc_zone_identifier        = [aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]
  health_check_type          = var.auto_scaling_group_health_check_type
  health_check_grace_period  = var.auto_scaling_group_health_check_grace_period

  launch_template {
    id      = aws_launch_template.my_lt.id
    version = "$Latest"
  }
}
