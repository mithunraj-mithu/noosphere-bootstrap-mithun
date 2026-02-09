

#creating vpc
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.project}-${var.environment}-vpc"
  }
}



# creating internet gateway
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.main.id

    tags = merge(var.tags,

    {
      Name = "${var.project}-${var.environment}-${each.value}"
      Type = "${var.project}-${var.environment}-Public"

    }
  )

}


# creating public subnets
resource "aws_subnet" "public_subnet" {
  for_each = { for index, name in local.az_names.names : index => name }
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 8, each.key + 1)
  availability_zone       = each.value 
  map_public_ip_on_launch = true

  tags = merge(var.tags,

    {
      Name = "${var.project}-${var.environment}-${each.value}"
      Type = "${var.project}-${var.environment}-Public"

    }
  )


}

# creating public_subnet route tabale
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = merge(var.tags,

    {
      Name = "${var.project}-${var.environment}-${each.value}"
      Type = "${var.project}-${var.environment}-Public"

    }
  )

}

# associating public subnets with public rt
resource "aws_route_table_association" "public_rta" {
  for_each = aws_subnet.public_subnet

  subnet_id      = each.value.id
  route_table_id = aws_route_table.public_rt.id
}
