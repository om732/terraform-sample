#
# Subnet
# https://www.terraform.io/docs/providers/aws/r/subnet.html
#

resource "aws_subnet" "sample_subnet_a" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block = "172.16.1.0/24"
    tags {
        Name = "sample_subnet_a"
    }
}

resource "aws_subnet" "sample_subnet_c" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "172.16.3.0/24"
    tags {
        Name = "sample_subnet_c"
    }
}
