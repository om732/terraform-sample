#
# SecurityGroup
# https://www.terraform.io/docs/providers/aws/r/security_group.html
#

resource "aws_security_group" "sample_sg" {
    name = "sample_sg"
    description = "Sample: instance"
    vpc_id = "${aws_vpc.sample_vpc.id}"

    ingress {
        protocol    = "tcp"
        from_port   = 22
        to_port     = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        protocol    = "tcp"
        from_port   = 0
        to_port     = 65535
        cidr_blocks = ["172.16.0.0/16"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags {
        Name = "sample_sg"
    }
}

resource "aws_security_group" "sample_elb_sg" {
    name = "sample_elb_sg"
    description = "Sample: elb"
    vpc_id = "${aws_vpc.sample_vpc.id}"

    ingress {
        protocol    = "tcp"
        from_port   = 80
        to_port     = 80
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags {
        Name = "sample_elb_sg"
    }
}
