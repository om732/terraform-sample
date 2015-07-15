#
# RouteTable
# https://www.terraform.io/docs/providers/aws/r/route_table.html
#

resource "aws_route_table" "sample_rt" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.sample_gw.id}"
    }
    tags {
        Name = "sample_rt"
    }
}

resource "aws_route_table_association" "sample_rtassoc_a" {
    subnet_id = "${aws_subnet.sample_subnet_a.id}"
    route_table_id = "${aws_route_table.sample_rt.id}"
}

resource "aws_route_table_association" "sample_rtassoc_c" {
    subnet_id = "${aws_subnet.sample_subnet_c.id}"
    route_table_id = "${aws_route_table.sample_rt.id}"
}
