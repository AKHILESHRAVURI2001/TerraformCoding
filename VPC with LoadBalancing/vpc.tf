resource "aws_vpc" "my_vpc" {
  tags = var.vpc_tags
  cidr_block = var.vpc_cidr_block
  instance_tenancy = var.vpc_instance_tenancy
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
}