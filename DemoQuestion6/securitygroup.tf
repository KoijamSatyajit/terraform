resource "aws_security_group" "Koijam-SG" {
  vpc_id = "${aws_vpc.Koijam-VPC.id}"
  name = "Koijam-SG"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
tags {
    Name = "Koijam-SG"
  }
}
resource "aws_security_group" "elb-securitygroup" {
  vpc_id = "${aws_vpc.Koijam-VPC.id}"
  name = "myelb"
  description = "security group for load balancer"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "myelb"
  }
}

