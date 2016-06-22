#
# NAT Gateway
# https://www.terraform.io/docs/providers/aws/r/nat_gateway.html
#

resource "aws_nat_gateway" "sample_nat_gw" {
    allocation_id = "${aws_eip.nat.id}"
    subnet_id = "${aws_subnet.public.id}"

    depends_on = ["aws_internet_gateway.sample_gw"]
}
