#
# Subnet
# https://www.terraform.io/docs/providers/aws/r/subnet.html
#

### private A Zone
resource "aws_subnet" "sample_private_subnet_a" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block = "172.16.1.0/24"
    tags {
        Name = "sample_private_subnet_a"
    }
}

### private C Zone
resource "aws_subnet" "sample_private_subnet_c" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "172.16.3.0/24"
    tags {
        Name = "sample_private_subnet_c"
    }
}

### public A Zone
resource "aws_subnet" "sample_public_subnet_a" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block = "172.16.201.0/24"
    tags {
        Name = "sample_public_subnet_a"
    }
}

### public C Zone
resource "aws_subnet" "sample_public_subnet_c" {
    vpc_id = "${aws_vpc.sample_vpc.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "172.16.202.0/24"
    tags {
        Name = "sample_public_subnet_c"
    }
}
