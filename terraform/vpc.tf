data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = merge(

    var.tags,

    {

      Name = "${var.project}-${var.environment}-vpc"

    }
  )
}




# creating internet gateway
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.main.id

  tags = merge(var.tags,

    {

      Name = "${var.project}-${var.environment}-igw"

    }
  )

}

# creating public subnets
resource "aws_subnet" "public_subnet" {
  count                   = length(var.public_subnet)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet[count.index]
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = merge(var.tags,

    {
      Name = "${var.project}-${var.environment}-${data.aws_availability_zones.available.names[count.index]}"

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
      Name = "${aws_subnet.public_subnet[0].tags["Name"]}-rt"

    }
  )

}

resource "aws_route_table_association" "public_rta" {
  count          = length(var.public_subnet)
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id

}
