#
# EIP
# https://www.terraform.io/docs/providers/aws/r/eip.html
#

resource "aws_eip" "sample_nat_eip" {
    vpc = true
}
