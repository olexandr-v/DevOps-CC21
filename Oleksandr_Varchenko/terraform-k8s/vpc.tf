#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = tomap({
    "Name"                                      = "${var.cluster_name}-node",
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
  })
}

resource "aws_subnet" "subnet" {
  count = 2

  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.0.${count.index}.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.vpc.id

  tags = tomap({
    "Name"                                      = "${var.cluster_name}-node",
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
  })
}

resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.cluster_name}"
  }
}

resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
}

resource "aws_route_table_association" "route-table-association" {
  count = 2

  subnet_id      = aws_subnet.subnet.*.id[count.index]
  route_table_id = aws_route_table.route-table.id
}
