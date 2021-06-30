# ------------------------------------------------------------------------------
# PUBLIC SUBNETS
# ------------------------------------------------------------------------------

resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.public_subnet_b_cidr}"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true

  tags {
    Name = "public-subnet-b"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.public_subnet_c_cidr}"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_launch = true

  tags {
    Name = "public-subnet-c"
  }
}

# ------------------------------------------------------------------------------
# PUBLIC ROUTE TABLES
# ------------------------------------------------------------------------------

resource "aws_route_table" "public_route_table" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = "${aws_subnet.public_subnet_b.id}"
  route_table_id = "${aws_route_table.public_route_table.id}"
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = "${aws_subnet.public_subnet_c.id}"
  route_table_id = "${aws_route_table.public_route_table.id}"
}

# ------------------------------------------------------------------------------
# PRIVATE SUBNETS
# ------------------------------------------------------------------------------

resource "aws_subnet" "private_subnet_b" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.private_subnet_b_cidr}"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = false

  tags {
    Name = "private-subnet-b"
  }
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.private_subnet_c_cidr}"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_launch = false

  tags {
    Name = "private-subnet-c"
  }
}

resource "aws_subnet" "db_subnet_b" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.db_subnet_b_cidr}"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = false

  tags {
    Name = "db-subnet-b"
  }
}

resource "aws_subnet" "db_subnet_c" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.db_subnet_c_cidr}"
  availability_zone       = "ap-southeast-2c"
  map_public_ip_on_launch = false

  tags {
    Name = "db-subnet-c"
  }
}

# ------------------------------------------------------------------------------
# PRIVATE ROUTE TABLES
# ------------------------------------------------------------------------------

resource "aws_route_table" "private_route_table_b" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw_b.id}"
  }

  tags {
    Name = "private-route-table"
  }
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = "${aws_subnet.private_subnet_b.id}"
  route_table_id = "${aws_route_table.private_route_table_b.id}"
}

resource "aws_route_table" "private_route_table_c" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw_c.id}"
  }

  tags {
    Name = "private-route-table"
  }
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = "${aws_subnet.private_subnet_c.id}"
  route_table_id = "${aws_route_table.private_route_table_c.id}"
}
