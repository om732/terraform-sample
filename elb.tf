#
# ELB
# https://www.terraform.io/docs/providers/aws/r/elb.html
#

resource "aws_elb" "sample_elb" {
    name = "sample-elb"
    subnets = [
        "${aws_subnet.sample_public_subnet_a.id}",
        "${aws_subnet.sample_public_subnet_c.id}"
    ]
    security_groups = ["${aws_security_group.sample_elb_sg.id}"]

    listener {
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }

    health_check {
        healthy_threshold = 3
        unhealthy_threshold = 3
        timeout = 10
        target = "HTTP:80/"
        interval = 30
    }

    instances = [
        "${aws_instance.sample_instance_1.id}",
        "${aws_instance.sample_instance_2.id}"
    ]
    cross_zone_load_balancing = true
    idle_timeout = 60
    connection_draining = true
    connection_draining_timeout = 300

    tags {
        Name = "sample_elb"
    }
}
