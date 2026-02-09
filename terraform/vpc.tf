resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.project}-${var.environment}-vpc"
  }
}

resource "aws_subnet" "public_subnet" {

  for_each                = { for index, az_name in local.local.az_names : index => az_name }
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 8, each.key + 1)
  availability_zone       = local.az_names[each.key]
  map_public_ip_on_launch = true


}
