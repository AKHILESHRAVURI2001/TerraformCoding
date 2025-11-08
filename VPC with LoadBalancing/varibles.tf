
# VPC Variables

variable "vpc_cidr_block" {
  type = string
  description = "VPC CIDR Block"
  default = "10.0.0.0/16"
}

variable "vpc_instance_tenancy" {
  type = string
  description = "VPC Instance Tenancy"
  default = "default"
}

variable "vpc_enable_dns_hostnames" {
  type = bool
  description = "VPC Enable DNS Hostnames"
  default = true
}

variable "vpc_tags" {
  type = map(string)
  description = "VPC Tags"
  default = {
    Name = "my-vpc"
  }
}

# Subnet Variables

variable "subnet_cidr_block1" {
  type = string
  description = "Subnet CIDR Block"
  default = "10.0.1.0/24"
}

variable "subnet_cidr_block2" {
  type = string
  description = "Subnet CIDR Block"
  default = "10.0.2.0/24"
}


variable "subnet_availability_zone1" {
  type = string
  description = "Subnet Availability Zone"
  default = "us-east-1a"
}

variable "subnet_availability_zone2" {
  type = string
  description = "Subnet Availability Zone"
  default = "us-east-1b"
}

variable "subnet_tags" {
  type = map(string)
  description = "Subnet Tags"
  default = {
    Name = "my-subnet"
  }
}

# Route Table Variables

variable "route_table_tags" {
  type = map(string)
  default = {
    Name = "my-rt"
  }
}

variable "route_table_route" {
  type = list(map(string))
  default = [
    {
      cidr_block = "0.0.0.0/0"
    }
  ]
}


# Internet Gateway Variables

variable "internet_gateway_tags" {
  type = map(string)
  description = "Internet Gateway Tags"
  default = {
    Name = "my-igw"
  }
}


# Security Group Variables

variable "security_group_tags" {
  type = map(string)
  description = "Security Group Tags"
  default = {
    Name = "my-sg"
  }
}

# Launch Template Variables

variable "launch_template_keypair_name" {
  type = string
  description = "Key Pair for EC2 Instance"
  default = "harsha_keypair"
}

variable "launch_template_description" {
  type = string
  description = "Launch Template Description"
  default = "My Launch Template"
}

variable "launch_template_image_id" {
  type = string
  description = "Launch Template Image ID"
  default = "ami-0157af9aea2eef346"
}

variable "launch_template_instance_type" {
  type = string
  description = "Launch Template Instance Type"
  default = "t3.micro"
}

variable "launch_template_name" {
  type = string
  description = "Launch Template for EC2 Instance"
  default = "my-lt"
}

# Load Balancer Variables

variable "load_balancer_name" {
  type = string
  description = "Load Balancer Name"
  default = "my-elb"
}

variable "load_balancer_tags" {
  type = map(string)
  description = "Load Balancer Tags"
  default = {
    Name = "my-elb"
  }
}

# Auto Scaling Group Variables

variable "auto_scaling_group_name" {
  type = string
  description = "Auto Scaling Group Name"
  default = "my-asg"
}

variable "auto_scaling_group_tags" {
  type = map(string)
  description = "Auto Scaling Group Tags"
  default = {
    Name = "my-asg"
  }
}

variable "auto_scaling_group_min_size" {
  type = number
  description = "Auto Scaling Group Minimum Size"
  default = 2
}

variable "auto_scaling_group_max_size" {
  type = number
  description = "Auto Scaling Group Maximum Size"
  default = 4
}

variable "auto_scaling_group_desired_capacity" {
  type = number
  description = "Auto Scaling Group Desired Capacity"
  default = 2
}

variable "auto_scaling_group_health_check_type" {
  type = string
  description = "Auto Scaling Group Health Check Type"
  default = "ELB"
}

variable "auto_scaling_group_health_check_grace_period" {
  type = number
  description = "Auto Scaling Group Health Check Grace Period"
  default = 300
}
