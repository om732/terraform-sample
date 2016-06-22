#
# RouteTable
# https://www.terraform.io/docs/providers/aws/r/route_table.html
#


### public subnet
resource "aws_route_table" "sample_public_rt" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.sample_gw.id}"
    }
    tags {
        Name = "sample_public_rt"
    }
}

resource "aws_route_table_association" "sample_public_rtassoc_a" {
    subnet_id = "${aws_subnet.sample_public_subnet_a.id}"
    route_table_id = "${aws_route_table.sample_public_rt.id}"
}

resource "aws_route_table_association" "sample_public_rtassoc_c" {
    subnet_id = "${aws_subnet.sample_public_subnet_c.id}"
    route_table_id = "${aws_route_table.sample_public_rt.id}"
}

### private subnet
resource "aws_route_table" "sample_private_rt" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.sample_nat_gw.id}"
    }
    tags {
        Name = "sample_private_rt"
    }
}

resource "aws_route_table_association" "sample_private_rtassoc_a" {
    subnet_id = "${aws_subnet.sample_private_subnet_a.id}"
    route_table_id = "${aws_route_table.sample_private_rt.id}"
}

resource "aws_route_table_association" "sample_private_rtassoc_c" {
    subnet_id = "${aws_subnet.sample_private_subnet_c.id}"
    route_table_id = "${aws_route_table.sample_private_rt.id}"
}

