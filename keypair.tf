#
# Key Pair
# https://www.terraform.io/docs/providers/aws/r/key_pair.html
#

resource "aws_key_pair" "sample_key" {
    key_name = "sample"
    public_key = "${var.public_key}"
}
