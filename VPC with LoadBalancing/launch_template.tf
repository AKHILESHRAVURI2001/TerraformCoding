resource "aws_launch_template" "my_lt" {
    name = var.launch_template_name
    description = var.launch_template_description
    image_id = var.launch_template_image_id
    instance_type = var.launch_template_instance_type
    key_name = var.launch_template_keypair_name
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    tags = {
        Name = var.launch_template_name
    }
    
    user_data = base64encode(<<EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    EOF
    )
}