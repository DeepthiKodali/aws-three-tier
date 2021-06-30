# ------------------------------------------------------------------------------
# CONFIGURE OUR NETWORK
# ------------------------------------------------------------------------------

resource "aws_vpc" "main_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "main-vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  tags {
    Name = "igw"
  }
}
