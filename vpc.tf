#
# VPC
# https://www.terraform.io/docs/providers/aws/r/vpc.html
#

resource "aws_vpc" "sample_vpc" {
    cidr_block = "172.16.0.0/16"
    tags {
        Name = "sample_vpc"
    }
}
