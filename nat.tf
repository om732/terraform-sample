#
# NAT Gateway
# https://www.terraform.io/docs/providers/aws/r/nat_gateway.html
#

resource "aws_nat_gateway" "sample_nat_gw" {
    allocation_id = "${aws_eip.sample_nat_eip.id}"
    subnet_id = "${aws_subnet.sample_public_subnet_a.id}"

    depends_on = ["aws_internet_gateway.sample_gw"]
}
