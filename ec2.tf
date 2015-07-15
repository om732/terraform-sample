#
# EC2
# https://www.terraform.io/docs/providers/aws/r/instance.html
#

resource "aws_instance" "sample_instance_1" {
    ami = "ami-cbf90ecb"
    instance_type = "t2.micro"
    key_name = "sample"
    security_groups = ["${aws_security_group.sample_sg.id}"]
    subnet_id = "${aws_subnet.sample_subnet_a.id}"
    associate_public_ip_address = "1"
    root_block_device {
        volume_type = "gp2"
        volume_size = 10
    }
    tags {
        Name = "sample_instance_1"
    }
}

resource "aws_instance" "sample_instance_2" {
    ami = "ami-cbf90ecb"
    instance_type = "t2.micro"
    key_name = "sample"
    security_groups = ["${aws_security_group.sample_sg.id}"]
    subnet_id = "${aws_subnet.sample_subnet_c.id}"
    associate_public_ip_address = "1"
    root_block_device {
        volume_type = "gp2"
        volume_size = 10
    }
    tags {
        Name = "sample_instance_2"
    }
}
